
import time
import random
from PriorityQueue import *
from sets import Set
import sys
import os


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
	
def TransChungLu():

	PQ = PriorityQueue()
	Edges = Set()

	#(Edges, Time_Map, in_Pi, out_Pi, in_pi, out_pi, num_edges) = ChungLu()
	
	File = open("FRDG","r")
	List = []
	for line in File:
		line = line.strip()
		line = line.split()
		Node = (int(line[0]),int(line[1]))
		#Node = (v_i,v_j)
		List.append(Node)
		Edges.add(Node)			
	
	
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

	
	print "Initialization Complete: Begin Trans Chung Lu"
	
	print "Begin Trans Chung Lu"
	
	for i in range(num_edges):
		
		if PQ.isEmpty():
			prob = random.random()
			v_j  = Node_Select(in_Pi, prob)
		else:
			Node  = PQ.dequeue()
			v_j = Node.data
			del Node
			
		r = Bernouli(0.6)#p) #NEED to change the "p" prob value here
		if r == 1:
			v_k = Uniform_Pick(Edges, v_j)  #1 #need to fix this, using (v_k, v_j)
			v_i = Uniform_Pick(Edges, v_k)
		
		else:
			v_i = Node_Select(out_Pi, prob)
		
		j = 0
		if (v_i,v_j) not in Edges:
			Edges.add((v_i,v_j))
			Node = List.pop(0)
			#Time_Map[j] = (v_i,v_j)
			#remove the elements from Time
			Edges.remove(Node)
			#del Time_Map[j-num_edges]

			
		else:
			PQ.enqueue(v_i, out_pi[v_i])
			PQ.enqueue(v_j,  in_pi[v_j])
			
		#if (i % 10000 == 0):
		print i,
			
	print "Begin Printing"
	Print_Model(Edges)
			
def Print_Model(Set):
	File = open("FRDG_TCL","w")
	for item in Set:
		File.write("%d %d\n" % (item[0],item[1]))
		
	File.close()
			
def Uniform_Pick(Set,v_j):
	List = []
	for i in range(81306):
		if (i, v_j) in Set:
			List.append(i)
	
	if len(List) > 1:
		return List[random.randint(0,len(List)-1)]
		
	elif len(List) == 1:
		return List[0]
		
	else:
		return random.randint(1,81306)

def Node_Select(Pi, prob):
	i = 0
	while Pi[i] < prob:
		i += 1
	return (i+1) #the node number is the index number plus 1


def PrintChungLu(Edges):
	File = open("CL","w")
	for item in Edges:
		line = "%d %d\n" % (item[0], item[1])
		File.write(line)
		
	File.close()


TransChungLu()