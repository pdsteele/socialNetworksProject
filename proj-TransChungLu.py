
import time
import random
from PriorityQueue import *
from sets import Set
import sys
import os
import bisect
import math


def Bernouli(p):
	rand = random.random()
	if rand > p:
		return 1 #Failure/Random Node Selection
	return 0	 #Success/Specific Node

def ChungLu():# We must set both FileName,edges):

	#This line of code is used to generate the Adjacency matrix.

	#D  = []  #set up the basic diagonal matrix here only as 1 column
	in_deg  = []
	out_deg = []
	in_pi   = []
	out_pi  = []
	in_Pi   = []
	out_Pi  = []
	for i in range(81306):
		in_deg.append(0)
		out_deg.append(0)
		in_pi.append(0)
		out_pi.append(0)
		in_Pi.append(0)
		out_Pi.append(0)

	
	print "Setup Part 1 finished"
	
	num_edges = (2420765/2 - 1) 
	#After that, we need to read in the file
	File = open("TwitterRW1.50","r")
	sum = 0
	for line in File:
		line    = line.strip()
		line    = line.split()
		line[0] = int(line[0])
		line[1] = int(line[1])
		in_deg[line[0]-1] += 1
		out_deg[line[1]-1] += 1
		sum += 1
		
	print sum

	File.close()

	M = num_edges * 1.0
	for i in range(len(in_deg)):
		in_pi[i]  = (in_deg[i]  / M) #changed to M for single direction probability
		out_pi[i] = (out_deg[i] / M)
		#print Pi[i] #fix this addition as it doesn't seem to read low numbers

	print "Setup Part 2 finished, begin eCDF"
	#print D

	#now we must change pi list to CDF or Empirical CDF (eCDF) pi -> Pi
	sum  = 0
	sum2 = 0
	for i in range(len(in_pi)):
		sum       += in_pi[i]
		sum2      += out_pi[i]
		in_Pi[i]  += sum
		out_Pi[i] += sum2
		

	Edges    = Set()
	Time_Map = {}
	Q        = Queue()
	
	print "Initialization Complete: Begin Chung Lu"
	
	#Edge Tuple has format (v_i, v_j, time/order_num)
	for i in range(num_edges):
		
		if Q.isEmpty():
			prob = random.random()
			v_j  = Node_Select(in_Pi, prob)
		else:
			Node = Q.dequeue()
			v_j  = Node.data
			del Node
		
		prob = random.random()
		v_i  = Node_Select(out_Pi, prob)
		
		if (v_i,v_j) not in Edges:
			Edges.add((v_i,v_j))
			Time_Map[i] = (v_i,v_j)
			
		else:
			Q.enqueue(v_i)
			Q.enqueue(v_j)
			
		if (i % 10000 == 0):
			print (i/10000)
			
	PrintChungLu(Edges)
			
	return (Edges, Time_Map, in_Pi, out_Pi, in_pi, out_pi, num_edges)
		
	
	# Add Edges by including a time step for the TCL!!!!!
	
	
	#return Edges

def learnP(Edges, out_pi, out_Pi, in_deg, out_deg):
	#expectation maxing alg for finding P
	delta = .001
	pLast = 0
	pCurrent = .99

	while(math.fabs(pLast - pCurrent) > delta):

		summation = 0
		for i in range(10000):

			#draw source node at random until we find one with an edge
			#   then select one of its edges at random 
			v_i = None
			while (v_i == None):
				try:
					v_i = Node_Select(out_Pi, random.random()) #get a source node
					v_j = random.sample(Edges[v_i],1)[0] #get a target node
				except:
					pass
			#EndWhile

			#calc P(eij|zij=1)
			temp1 = 0
			try:
				for v_k in Edges[v_j]: #possible key error if no edges from vj
					try:
						if(v_i in Edges[v_k]): #possible key error if no edges from vk
							temp1 += (1/(in_deg[v_j]+out_deg[v_j]))*(1/(in_deg[v_k]+out_deg[v_k]))
					except:
						pass
				#EndFor
			except:
				pass
			temp1 = pCurrent*temp1 

			#calc P(eij|zij=0)
			temp2 = (1-pCurrent)*(out_pi[v_i])

			summation += temp1/(temp1+temp2)
		#EndFor
		pLast = pCurrent
		pCurrent = summation/10000
		print(pCurrent) #debug
	#EndWhile

	return(pCurrent)






	
def TransChungLu():

	PQ = PriorityQueue()
	Edges = {} #edges is dict where TARGET nodes are keys, and source nodes are in a set associated with the key
				# this allows the uniform selection to be done in constant time 
	Edges2 = {} #second dict that is opposite of first for P learning alg

	#(Edges, Time_Map, in_Pi, out_Pi, in_pi, out_pi, num_edges) = ChungLu()
	
	File = open("FRDG","r")
	List = [] #tracks order of edge introduction 
	for line in File:
		line = line.strip()
		line = line.split()
		Node = (int(line[0]),int(line[1]))
		#Node = (v_i,v_j)
		List.append(Node)
		try:
			Edges[int(line[1])].add(int(line[0])) #add to set 
		except:
			Edges[int(line[1])]= {int(line[0])} #initialize set
		try:
			Edges2[int(line[0])].add(int(line[1])) #add to set 
		except:
			Edges2[int(line[0])] ={int(line[1])} #init set 
		#Edges.add(Node)			
	
	
	in_deg  = []
	out_deg = []
	in_pi   = []
	out_pi  = []
	in_Pi   = []
	out_Pi  = []
	for i in range(81306):
		in_deg.append(0)
		out_deg.append(0)
		in_pi.append(0)
		out_pi.append(0)
		in_Pi.append(0)
		out_Pi.append(0)

	
	print "Setup Part 1 finished"
	
	num_edges = (2420765) 
	#After that, we need to read in the file
	File = open("twitter_combined2.txt","r")
	sum = 0
	for line in File:
		line    = line.strip()
		line    = line.split()
		line[0] = int(line[0])
		line[1] = int(line[1])
		in_deg[line[0]-1] += 1
		out_deg[line[1]-1] += 1
		sum += 1
		
	print sum

	File.close()

	M = num_edges * 1.0 #debug
	for i in range(len(in_deg)):
		in_pi[i]  = (in_deg[i]  / M) #changed to M for single direction probability
		out_pi[i] = (out_deg[i] / M)
		#print Pi[i] #fix this addition as it doesn't seem to read low numbers

	print "Setup Part 2 finished, begin eCDF"
	#print D

	#now we must change pi list to CDF or Empirical CDF (eCDF) pi -> Pi
	sum  = 0
	sum2 = 0
	for i in range(len(in_pi)):
		sum       += in_pi[i]
		sum2      += out_pi[i]
		in_Pi[i]  = sum
		out_Pi[i] = sum2

	print "Debugging - these should end with 1, each"
	print in_Pi[len(in_Pi)-1] #DEBUG
	print out_Pi[len(out_Pi)-1] #DEBUG
	
	#need to learn correct P 
	start = time.time()
	p = learnP(Edges2, out_pi, out_Pi, in_deg, out_deg)
	print p
	done = time.time()
	delta = done - start
	print("Finding P took {0:f}".format(delta))

	print "Initialization Complete: Begin Trans Chung Lu"
	
	print "Begin Trans Chung Lu"
	
	i = 0
	while (len(List) > 0 and i < num_edges):
		
		if PQ.isEmpty():
			prob = random.random()
			v_j  = Node_Select(in_Pi, prob)
		else:
			Node  = PQ.dequeue()
			v_j = Node.data
			del Node
			
		r = Bernouli(p) #NEED to change the "p" prob value here
		if r == 1:
			v_k = Uniform_Pick(Edges, v_j) 
			v_i = Uniform_Pick(Edges, v_k)  #establishes (vi,vk) -> (vk,vj)
		else:
			prob = random.random()
			v_i = Node_Select(out_Pi, prob)
		
		if (v_i,v_j) not in Edges:
			try:
				Edges[v_j].add(v_i) #add v_i to set of target nodes 
			except:
				Edges[v_j] = {v_i} #init set

			#identify node to remove
			Node = List.pop(0) #removes oldest element from Edges

			#remove edge from dictionary
			temp1 = Node[0] #source node of edge to remove
			temp2 = Node[1] #target node of edge to remove

			#check if this is only edge of target node
			if (len(Edges[temp2]) <= 1): 
				#eliminate key and set
				Edges.pop(temp2,None) 
			else:
				#eliminate target node from set
				Edges[temp2].remove(temp1)

			
		else:
			PQ.enqueue(v_i, out_pi[v_i])
			PQ.enqueue(v_j,  in_pi[v_j])
			
		if (i % 10000 == 0):
			print i

		i += 1
	#EndWhile
			
	print "Begin Printing"
	Print_Model(Edges)
			

def Print_Model(edgeDict):
	File = open("FRDG_TCL_1","w")
	#each key is a target node, with a set of source nodes
	for targetNode in edgeDict:
		sourceSet = edgeDict[targetNode]
		for sourceNode in sourceSet:
			File.write("%d %d\n" % (int(sourceNode),int(targetNode)))
			
def Uniform_Pick(edgeDict, v_j):	
	try:
		return (random.sample(edgeDict[v_j],1)[0])
	except:
		return (random.randint(1,81306))

def Node_Select(Pi, prob):
	return (bisect.bisect(Pi,prob)) #O(logn) instead of O(n) for each call
	# i = 0
	# while Pi[i] < prob:
	# 	i += 1
	# return (i+1) #the node number is the index number plus 1


def PrintChungLu(Edges):
	File = open("CL1","w")
	for item in Edges:
		line = "%d %d\n" % (item[0], item[1])
		File.write(line)
		
	File.close()

start = time.time()
TransChungLu()
done = time.time()
delta = done - start
print("This program took {0:f}".format(delta))
