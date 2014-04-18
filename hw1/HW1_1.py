import itertools
import bisect
import math
import sets

#Read the files created for networks
File = open("authNetwork2.txt","r")
#Change to File = open("authNetwork2.txt","r"), for the second dataset
netList = []
Length = 0
for line in File:
	Length += 1
	line = line.strip()
	line = line.split()
	line.pop(3)
	line.pop(1)
	for k in range(len(line)):
		line[k] = line[k].strip()
		line[k] = line[k].strip(",")
		line[k] = int(line[k])
	netList.append(line)
	
File.close()

#TOTAL CONNECTIONS/SELF-LOOPS - PART A
#this displays the number of self loops
num = 0
selfs = 0
for item in netList:
	if item[1] > 0:
		print item[0],":",item[1],"; ",
		selfs += 1
		num += item[1]
		
print
print "Total occurances = %d;  Total authors = %d" % (num, selfs)

#This shows the number of distinct edges
Set = sets.Set()
lineNum = 1
setSize = 0
while lineNum < Length + 1:
	#print lineNum,
	if len(netList[lineNum - 1]) > 2:
		elem = netList[lineNum-1][0]
		for item in netList[lineNum-1][2:]:
			temp = [elem,item]
			temp = sorted(temp)
			temp = (temp[0],temp[1])
			if temp not in Set: 
				Set.add(temp)
				setSize += 1
	lineNum += 1
		
print "Without self loops =  %d" % setSize
print "Including authors as single self-loops = %d" % (setSize+selfs) 

#DEGREE - PART B
#This shows the max degree node and the list full of nodes with degrees
Dmax = [0,0] #shows first element with degree
dList = []
for elem in netList:
	if len(elem) > 2:
		if Dmax[1] < len(elem[2:]):
			Dmax = [elem[0],len(elem[2:])]
	dList.append([elem[0],len(elem)-2])
	
print
print "The maximum degree is %d at node %d" % (Dmax[1],Dmax[0])
print Dmax
print

degNum = [0]*(Dmax[1]+1) #the max element in our distinct edges amount
for item in dList:
	degNum[item[1]] += 1
	
for i in range(len(degNum)):
	if degNum[i] > 0:
		print  i,degNum[i]
print	
	
#CONNECTED COMPONENTS - PART C	
#This determines connected components
#first 5 lines here speed up process
visited = []
for i in range(1,Length+1):
	visited.append(0)
component = []
conComs = []
for each in netList:
	if visited[each[0]-1] == 0:
		if len(each) == 2:
			conComs.append([each[0]])
			visited[each[0]-1] = 1
		else:
			component.append(each[0])
			visited[each[0]-1] = 1
			for item in component:
				mini = netList[item-1]
				for elem in mini[2:]:
					if visited[elem-1] != 1:
						component.append(elem)
						visited[elem-1] = 1
			conComs.append(component)
			component = [] 

del visited	
sizeMap = {}
maxL = 0
itemCount = 0
for elem in conComs:
	if len(elem) not in sizeMap.keys():
		sizeMap[len(elem)] = 1
	else:
		sizeMap[len(elem)] += 1
	if len(elem) > maxL:
		maxL = len(elem)
	for item in elem:
		itemCount += 1

print "The following container shows the following 'Size-of-component:Instances'"	
print sizeMap

#MAX DISTANCE - PART D
print
print "Nodes added per step shown below:"

LCC = conComs[2]
component = []
explored = []
addList = [] #Use this to determine how many iter until next level
last = 0 # Use this for the number of iters until next
next = 0 # Use this for the accumulated iters within level
level = -1 # Use this for distance (will add the initial node to make 0)
for i in range(1,Length + 1):
	explored.append(1)
for item in LCC:
	explored[item-1] = 0

component.append(netList[3439 - 1][0]) 
next = 1 
explored[netList[3439 - 1][0]-1] = 1
count = 0
for item in component:
	addList.append(0)
	mini = netList[item-1]
	if last == 0:
		last = next
		next = 0
		level += 1	
		print last,
	for elem in mini[2:]:
		if explored[elem-1] != 1:
			component.append(elem)
			next += 1
			explored[elem-1] = 1
			addList[count] += 1
			temp = elem
	last -= 1
	count += 1	

print
print component[-5:]
print component[-1]
print
print "Distance = %d" % level

#Now the next node
print
print "Nodes added per step shown below:"
component = []
explored = []
addList = [] #Use this to determine how many iter until next level
last = 0 # Use this for the number of iters until next
next = 0 # Use this for the accumulated iters within level
level = -1 # Use this for distance (will add the initial node to make 0)
for i in range(1,Length + 1):
	explored.append(1)
for item in LCC:
	explored[item-1] = 0

component.append(netList[8211 - 1][0]) #  OLD: 7881

next = 1 
explored[netList[8211 - 1][0]-1] = 1  # OLD: 7881
count = 0
for item in component:
	addList.append(0)
	mini = netList[item-1]
	if last == 0:
		last = next
		next = 0
		level += 1
		print last,
	for elem in mini[2:]:
		if explored[elem-1] != 1:
			component.append(elem)
			next += 1
			explored[elem-1] = 1
			addList[count] += 1
			temp = elem
	last -= 1
	count += 1

print
print component[-1]
print
print "Distance = %d" % level