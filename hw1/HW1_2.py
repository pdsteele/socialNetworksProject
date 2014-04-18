import random
import sets

Edges = sets.Set()
Random = []

for i in range(32861):
	Random.append([i+1,0])

for i in range(102441): #the number of edges
	j = random.randint(1,32861)
	k = random.randint(1,32861)
	if j<k:
		temp = (j,k)
		if temp not in Edges:
			Edges.add((j,k))
			Random[j-1].append(k)
			Random[k-1].append(j)
	elif k<j:
		temp = (k,j)
		if temp not in Edges:
			Edges.add((k,j))
			Random[j-1].append(k)
			Random[k-1].append(j)
	else:
		Edges.add((j,k))
		Random[j-1][1] += 1
		
		
		
Small_World = []
for i in range(1,32862):
	Small_World.append([i,0])

	
Edges2 = sets.Set()
for i in range(32861):
	Small_World[i].append(Small_World[i-1][0])
	Small_World[i].append(Small_World[i-2][0])
	Edges2.add((i,Small_World[i-1][0]))
	Edges2.add((i,Small_World[i-2][0]))
	
	if i+1 == 32861:
		Small_World[i].append(Small_World[0][0])
		Small_World[i].append(Small_World[1][0])
		Edges2.add((i,Small_World[0][0]))
		Edges2.add((i,Small_World[1][0]))
		
	elif i+2 == 32861:
		Small_World[i].append(Small_World[0][0])
		Small_World[i].append(Small_World[i+1][0])
		Edges2.add((i,Small_World[i+1][0]))
		Edges2.add((i,Small_World[0][0]))
	
	else:
		Small_World[i].append(Small_World[i+1][0])
		Small_World[i].append(Small_World[i+2][0])
		Edges2.add((i,Small_World[i+1][0]))
		Edges2.add((i,Small_World[i+2][0]))
		
for i in range(36719): #the number of edges
	j = random.randint(1,32861)
	k = random.randint(1,32861)
	if j<k:
		temp = (j,k)
		if temp not in Edges2:
			Edges2.add((j,k))
			Small_World[j-1].append(k)
			Small_World[k-1].append(j)
	elif k<j:
		temp = (k,j)
		if temp not in Edges2:
			Edges2.add((k,j))
			Small_World[j-1].append(k)
			Small_World[k-1].append(j)
	else:
		Edges2.add((j,k))
		Small_World[j-1][1] += 1

#DEGREE - PART A
#This shows the max degree node and the list full of nodes with degrees
Dmax = [0,0] #shows max element with degree
dList = []
for elem in Random:
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
		print (i+1),":", degNum[i], "; ",
print

#For second one
Dmax = [0,0] #shows max element with degree
dList = []
for elem in Small_World:
	if len(elem) > 2:
		if Dmax[1] < len(elem[2:]):
			Dmax = [elem[0],len(elem[2:])]
	dList.append([elem[0],len(elem)-2])
	
#print dList
print
print "The maximum degree is %d at node %d" % (Dmax[1],Dmax[0])
print Dmax
print
		
degNum = [0]*(Dmax[1]+1) #the max element in our distinct edges amount
for item in dList:
	degNum[item[1]] += 1
	
for i in range(len(degNum)):
	if degNum[i] > 0:
		print (i+1),":", degNum[i], "; ",
print
print

#CONNECTED COMPONENTS - PART B
#This determines connected components
#first 5 lines here speed up process
visited = []
for i in range(1,len(Random)+1):
	visited.append(0)
component = []
conComs = []
for each in Random:
	if visited[each[0]-1] == 0:
		if len(each) == 2:
			conComs.append([each[0]])
			visited[each[0]-1] = 1
		else:
			component.append(each[0])
			visited[each[0]-1] = 1
			for item in component:
				mini = Random[item-1]
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
		
print
print "The following container shows the following 'Size-of-component:Instances'"		
print sizeMap
print

temp1 = []
for item in conComs:
	if len(item) > len(temp1):
		temp1 = item
Node1 = random.randint(0,len(temp1)-1)
Node1 = temp1[Node1]

#This determines connected components
#first 5 lines here speed up process
visited = []
for i in range(1,len(Small_World)+1):
	visited.append(0)
component = []
conComs = []
for each in Small_World:
	if visited[each[0]-1] == 0:
		if len(each) == 2:
			conComs.append([each[0]])
			visited[each[0]-1] = 1
		else:
			component.append(each[0])
			visited[each[0]-1] = 1
			for item in component:
				mini = Small_World[item-1]
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
		
print
print "The following container shows the following 'Size-of-component:Instances'"
print sizeMap
print
temp2 = []
for item in conComs:
	if len(item) > len(temp2):
		temp2 = item
Node2 = random.randint(0,len(temp2)-1)
Node2 = temp2[Node2]


#MAX DISTANCE - PART C
print
print "Nodes added per step shown below:"

LCC = temp1
component = []
explored = []
addList = [] #Use this to determine how many iter until next level
last = 0 # Use this for the number of iters until next
next = 0 # Use this for the accumulated iters within level
level = -1 # Use this for distance (will add the initial node to make 0)
for i in range(1,len(Random) + 1):
	explored.append(1)
for item in LCC:
	explored[item-1] = 0

component.append(Random[Node1 - 1][0]) 
next = 1 
explored[Random[Node1 - 1][0]-1] = 1
count = 0
for item in component:
	addList.append(0)
	mini = Random[item-1]
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
print Node1
print "Distance = %d" % level

print
print "Nodes added per step shown below:" 
LCC = temp2
component = []
explored = []
addList = [] #Use this to determine how many iter until next level
last = 0 # Use this for the number of iters until next
next = 0 # Use this for the accumulated iters within level
level = -1 # Use this for distance (will add the initial node to make 0)
for i in range(1,len(Small_World) + 1):
	explored.append(1)
for item in LCC:
	explored[item-1] = 0

component.append(Small_World[Node2 - 1][0])
next = 1  
explored[Small_World[Node2 - 1][0]-1] = 1
count = 0
for item in component:
	addList.append(0)
	mini = Small_World[item-1]
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
print Node2
print "Distance = %d" % level
