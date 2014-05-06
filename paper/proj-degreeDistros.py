# Finds in-degree distribution, out-degree distribution, 
#    and reciprocal-degree distribution.
#    SNAP folds reciprocal degrees into their in/out degree calculations
#		which is less than ideal for this project 
# first argument is input file name
# second argument is output file base name
# ONLY TESTED FOR PYTHON 3.3

from scipy import sparse
import numpy
import sys

def convertListToDistro(degreeList):
	#takes row sum list and converts it to degree distribution
	distro = {}

	for value in degreeList:
		try:
			distro[value] += 1
		except:
			distro[value] = 1

	return distro

def outputToFile(distroDict, outputFile):
	for key in sorted(distroDict):
		temp = str(int(key))+' '+str(distroDict[key])+'\n'
		outputFile.write(temp)

#Read the edge list passed as first parameter created for networks
File = open(sys.argv[1],"r")

#fix nodes and edges for graph being read in 
NODES = 81306
EDGES = 1768149

#declare sparse matrices
inDeg = sparse.lil_matrix((NODES+1,NODES+1))
outDeg = sparse.lil_matrix((NODES+1,NODES+1))
recipDeg = sparse.lil_matrix((NODES+1,NODES+1))

for line in File:
	#split line
	temp = line.split(' ')
	edge1 = int(temp[0]) #follower
	edge2 = int(temp[1]) #followed

	#update in degree matrix
	inDeg[edge2,edge1] = 1

	#update out degree matrix
	outDeg[edge1, edge2] = 1

	#update reciprocal degree matrix if reciprocal degree exists
	if (inDeg[edge1,edge2] == 1):
		recipDeg[edge1,edge2] = 1
		recipDeg[edge2,edge1] = 1

	#ensure we are not double counting for all reciprocal edges
	if (recipDeg[edge1,edge2] == 1): 
		inDeg[edge1,edge2] = 0
		outDeg[edge2,edge1] = 0
		inDeg[edge2,edge1] = 0
		outDeg[edge1, edge2] = 0

#close file
File.close()

#get row sums of each matrix into lists
inDegList = numpy.array(inDeg.sum(1)).reshape(-1,).tolist()
outDegList = numpy.array(outDeg.sum(1)).reshape(-1,).tolist()
recipDegList = numpy.array(recipDeg.sum(1)).reshape(-1,).tolist()

#convert lists to proper degree distributions
inDegDistro = convertListToDistro(inDegList)
outDegDistro = convertListToDistro(outDegList)
recipDegDistro = convertListToDistro(recipDegList)


#output degree distributions to three files
inDegFile = open('indeg_'+sys.argv[2], 'w')
outDegFile = open('outdeg_'+sys.argv[2], 'w')
recipDegFile = open('recipdeg_'+sys.argv[2], 'w')

outputToFile(inDegDistro,inDegFile)
inDegFile.close()

outputToFile(outDegDistro,outDegFile)
outDegFile.close()

outputToFile(recipDegDistro,recipDegFile)
recipDegFile.close()

