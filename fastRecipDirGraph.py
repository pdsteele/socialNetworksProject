#reads in in-degree, out-degree, and reciprocal degree files and generates
# graph with fast reciprocal directed graph model
# It outputs the edge list of the FRDG model, then performs
#   transitive step from TCL to 'fix' clustering
#  Then it outputs the Transitive-FRDG model edge list 
# First argument is the in-degree file
# Second argument is the out-degree file 
# Third argument is the reciprocal degree file 
# (OPTIONAL) Fourth argument is the file name
# (OPTIONAL) Fifth argument is the blowup factor (default is 10)

import sys
import random 
import bisect
import time



def processDistroFile(distroFile):
    #returns a dictionary with all degree/frequency pairs 
    distroDict = {}
    for line in distroFile:
        temp = line.split(' ')
        degree = int(temp[0])
        freq = int(temp[1])

        distroDict[degree] = freq

    return distroDict

def getN(degreeDict, min=0):
    #returns the calculated n from a degree distro
    # min is optional parameter for degrees to count
    sum = 0
    for key in degreeDict:
        if (key >= min):
            sum += degreeDict[key]

    return sum


def getM(degreeDict, min=0):
    #returns the calculated m from a degree distro
    sum = 0
    for key in degreeDict:
        if (key >= min):
            sum += key * degreeDict[key]

    return sum


def vertexSelect(degreeDict, b):
    #selects a set of nodes to be the source or target nodes for new edges
    #  b is a blowout factor - Sandia paper uses 10 for all their experiments
    #   use b=1 for no effect

    #initialization
    n = getN(degreeDict)
    nStar = getN(degreeDict,2)
    
    try:
        nStar += int(b)*degreeDict[1]
    except:
        #exception due to dict out of key error implies 0 freq for degree-1
        nStar += 0

    m = getM(degreeDict,1)
    P = {x for x in range(1,nStar+1)} #initial set of candidate nodes
    degs = degreeDict.keys() #set of degrees from 0,1,...,d_max
    degs = degs - {0} #remove 0 to get 1,...,d_max
    sorted(degs)
    weights = [0 for i in range(max(degs)+1)] #list for weights
    pDict = {} #dictionary of sets being drawn from P  


    #remove nodes from set
    for degree in degs:
        weights[degree] = degree*degreeDict[degree]/m

        #determine number of nodes to randomly draw from P
        if (degree == 1):
            removeNodes = b*degreeDict[1]
        else:
            removeNodes = degreeDict[degree]

        #randomly draw removeNode nodes - MAY NEED TO BE FIXED if it is sampled differently
        pDict[degree] = {i for i in random.sample(P,removeNodes)}

        P = P - pDict[degree] #set subtraction removes randomly drawn elements from P
    #EndFor  

    P = set() #clear out P 

    #create ecdf of weights for weighted random selection
    ecdf = [0 for i in range(max(degs)+1)]
    total_weight = 0.0
    for i in range(max(degs)+1):
        total_weight += weights[i]
        ecdf[i] = total_weight

    indices = [] 
    #DEBUG
    print("Slow part begins")
    start = time.time()

    for i in range(m):
        degTemp = bisect.bisect(ecdf, random.uniform(0,total_weight)) #denoted as d_k in paper
        temp = random.sample(pDict[degTemp],1)[0]
        P.add(temp) #contains all unique vertices 
        indices.append(temp) #kth value in set is a random vertex in P_d_k
    #EndFor

    #debug
    done = time.time()
    delta = done - start
    print("This time took {0:f} seconds".format(delta))
    #endDebug
 
    #create random mapping from P to {1,...,n}
    pi = [i for i in range(n)]
    pi = random.sample(pi,len(pi)) #shuffles pi 
    i = 0
    translator = {}

    for vertex in P:
        translator[vertex] = pi[i] 
        i += 1

    nodeList = []
    #generate final array with renamed elements
    for node in indices:
        nodeList.append(translator[node])

    return(nodeList)


def createEdges(nodeList1, nodeList2):
    #combines source node list and target node list to create 
    # set of edges. Use of sets eliminates duplicates, and a 
    # simple check eliminates self-loops. 
    edgeSet = set()

    for i in range(len(nodeList1)):
        x = nodeList1[i]
        y = nodeList2[i]
        if (x != y):
            edgeSet.add((x,y))

    return(edgeSet)


def outputEdgeList(edgeSet, fileName):
    outputFile = open(fileName,'w')

    for pair in edgeSet:
        temp = str(pair[0]) + " " + str(pair[1]) + "\n"
        outputFile.write(temp)




###################################Main Program#####################################
#set output file name
try:
    outputFileName = sys.argv[4]
except:
    outputFileName = "output_edgeList"

#set blowup factor 
#  Sandia paper uses b=10 
#  set to 1 for no blowup effect (generates Chung Lu graph)
try:
    b = sys.argv[5]
except:
    b = 10 

#Read the in degree distro
inDeg = open(sys.argv[1],"r")
inDegDict = processDistroFile(inDeg)
inDeg.close()

#Read the out degree distro
outDeg = open(sys.argv[2],"r")
outDegDict = processDistroFile(outDeg)
outDeg.close()

#Read the recip degree distro
recipDeg = open(sys.argv[3],"r")
recipDegDict = processDistroFile(recipDeg)
recipDeg.close()

#divide frequencies by two for reciprocal degree
for key in recipDegDict:
    recipDegDict[key] = int(recipDegDict[key]/2) #need whole number frequencies; sacrifice a little I 'spose

#Fast reciprocal directed graph model
nodeList_source_1 = vertexSelect(recipDegDict,b)
nodeList_target_1 = vertexSelect(recipDegDict,b)
nodeList_source_2 = vertexSelect(outDegDict,b)
nodeList_target_2 = vertexSelect(inDegDict,b)

edgeSet1 = createEdges(nodeList_source_1, nodeList_target_1)
edgeSet2 = createEdges(nodeList_target_1, nodeList_source_1)
edgeSet3 = createEdges(nodeList_source_2, nodeList_target_2)

edgeSet = set()
edgeSet |= edgeSet1 | edgeSet2 | edgeSet3 #union of the three edge sets


#output edge list 
outputEdgeList(edgeSet, outputFileName)






