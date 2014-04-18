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

Example usage:
```
./proj-readInData test.txt outputGraph.graph
```

=====================

Thanks to the SNAP team (https://github.com/snap-stanford/snap) for an awesome library!
