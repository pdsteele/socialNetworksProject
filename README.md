socialNetworksProject
=====================

Class Project Comparing Graph Generation Performance using Twitter Data

=====================

Instructions: 

To clone: 
```                    
git clone https://github.com/pdsteele/socialNetworksProject.git
```

To compile: 
```
make all
```

To commit changes: 
```
git add -A 
git commit -m "comment about commit"
```

To upload back to github: 
```
git push origin master 
```

To get updates from github: 
```
git pull
```

=====================

File descriptions: 

readInData.cc handles turning the twitter dataset and sub-sample edge lists into SNAP graph objects and exporting them to binary files

The first argument is the input data (must be an edge list). The second argument is the desired output file name. 

Example usage:
```
./proj-readInData test.txt outputGraph.graph
```

calcStats.cc calculates the nodes, edges, full diameter, 90th percentile diameter, SCC diameter, and the average clustering coefficient. It also creates a clustering coefficient distribution plot, an in-degree distribution plot, an out-degree distribution plot, and a hop plot. 

The first argument is the input data (must be a SNAP generated binary file). The second argument is the desired base name for all the plot files. 

Example usage:
```
./proj-calcStats test.graph testName
```

degreeDistros.py (written for python 3.3) finds the in-degree distribution, out-degree distribution, and reciprocal degree distribution, and outputs each of them to a file. This requires Scipy on the machine it is being run on!

The first argument is the input file name of an edge-list, and the second argument is the desired base name for the output files.

Example usage:
```
python3 proj-degreeDistros.py test.txt testName
```

fastRecipDirGraph.py (written for python 3.3) generates a fast reciprocal directed graph given an in-degree distro, out-degree distro, and a reciprocal degree distro (the outputs from degreeDistros.py). This can take up to 10-20 minutes to run for large graphs. 

The first argument is the in-degree file. The second argument is the out-degree file. The third argument is the reciprocal degree file. The (OPTIONAL) fourth argument is the output file name. The (OPTIONAL) fifth argument is the blowup factor (default is 10 if not supplied). Use a blowup factor b=1 if you want a plain Chung-Lu graph.

Example usage:
```
python3 proj-fastRecipDirGraph.py inDeg_testName outDeg_testName recipDeg_testName testName 8 
```
TransChungLu.py (written for python 2.7) generates a Chung-Lu graph, and performs the Transitive Chung Lu algorithm on top of that generated graph. This can be modified to perform TCL on an already generated graph (e.g., FRDG). Be careful, this takes a long time to run (several hours).

Example usage:
```
python proj-TransChungLu.py
```

convertTwitter.py and priorityQueue.py are helper files. The former was for reformatting the original twitter dataset, and the latter implements a priority queue class used for the TCL program.  

=====================

Thanks to the SNAP team (https://github.com/snap-stanford/snap) for an awesome library!
