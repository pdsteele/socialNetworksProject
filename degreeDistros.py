# Finds in-degree distribution, out-degree distribution, 
#    and reciprocal-degree distribution.
#    SNAP folds reciprocal degrees into their in/out degree calculations
#		which is less than ideal for this project 

import itertools
import bisect
import math
import sets
import sys

#Read the edge list passed as first parameter created for networks
File = open(sys.argv[1],"r")

#use dictionary to track out degree
#   key is node number (first in each edge pair)
#	value is array of nodes it follows (second in each edge pair)




#Another dictionary used to track in degree
#	key is node number (second in each pair)
#	value is array of nodes that follow it (first in each edge pair)
#	If the value being added is already in the first dictionary, 
#	  and its array contains the key, then remove it and add 
#	  both nodes to third dictionary, each as keys, and with each other as their values


# scan out degree dict to create out degree distro
#   create dictionary where keys are out degree sizes
#	and values are initially 0 and incremented for every node of that out degree size


# scan in degree dict to create in degree distro
#   create dictionary where keys are in degree sizes
#	and values are initially 0 and incremented for every node of that in degree size

# scan reciprocal degree dict to create reciprocal degree distro
#   create dictionary where keys are reciprocal degree sizes
#	and values are initially 0 and incremented for every node of that reciprocal degree size


