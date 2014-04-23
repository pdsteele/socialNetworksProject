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



=====================

Thanks to the SNAP team (https://github.com/snap-stanford/snap) for an awesome library!
