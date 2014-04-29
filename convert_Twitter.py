#AVOID USING PRINTS!!!!!, slows me down!
#TRY Using "C++", then "C", MAIN: **"AWK"**, "Ruby", ***"JULIA"***
"""
Mega = []
for i in range(42000000):
	Mega.append("")

print "Mega Complete"
"""

import time
import random
from Queue import Queue
from sets import Set
import sys
import os

def writeStuff():
	i = 1
	j = 0
	breakVal = 0
	
	File = open("in2.txt","r")
	F1 = open("in2.1.txt","w")
	F2 = open("in2.2.txt","w")
	F3 = open("in2.3.txt","w")
	F4 = open("in2.4.txt","w")
	#F4 = open("in2.1.txt","w")
	#F5 = open("in2.2.txt","w")
	#F6 = open("in2.3.txt","w")
	#F7 = open("in2.4.txt","w")
	#F8 = open("in8.txt","w")
	#F9 = open("in9.txt","w")
	#F10 = open("in10.txt","w")
	#F11 = open("in11.txt","w")
	#F12 = open("in12.txt","w")
	"""
	File = open("ot2.txt","r")
	F1 = open("ot2.1.txt","w")
	F2 = open("ot2.2.txt","w")
	F3 = open("ot2.3.txt","w")
	F4 = open("ot2.4.txt","w")
	"""
	for line in File:
		temp     = line.strip()
		temp     = line.split()
	#	if len(line) > 2:
	#		continue
		try:
			temp = int(temp[1])
		except ValueError:
			continue
	
	#	line[0] = line[0].strip('!@#$%^&*().,-;: ')
	#	line[1] = line[1].strip('!@#$%^&*().,-;: ')
		"""
		if   temp < (4300000):
			F1.write(line)
		elif temp < (5200000):
			F2.write(line)
		elif temp < (6100000):
			F3.write(line)
		elif temp < (7100000):
			F4.write(line)
		"""
		
		if temp   < (4300000):
			F1.write(line)
		elif temp < (5200000):
			F2.write(line)
		elif temp < (6100000):
			F3.write(line)
		elif temp < (7000000):
			F4.write(line)
		"""
		elif temp < (3500000 * 4):
			F4.write(line)
		elif temp < (3500000 * 5):
			F5.write(line)
		elif temp < (3500000 * 6):
			F6.write(line)
		elif temp < (3500000 * 7):
			F7.write(line)
		elif temp < (3500000 * 8):
			F8.write(line)
		elif temp < (3500000 * 9):
			F9.write(line)
		elif temp < (3500000 * 10):
			F10.write(line)
		elif temp < (3500000 * 11):
			F11.write(line)
		elif temp < (3500000 * 12):
			F12.write(line)
		"""
	
	#	try:
	#		Mega[int(line[0])-1] += line[1] + ", "  #for the AtoB.txt
	#	except ValueError:
	#		print line
	#		break
	#	Mega[int(line[1])-1].append(int(line[0]))  #for the BtoA.txt, change to above method
	
		i += 1
		if i % 1400000 == 0:
			j += 1
			print "%d iterations Complete" % (i/1400000) #1,400,000,000 connections

	#print i,
	File.close()
	F1.close()
	F2.close()
	F3.close()
	F4.close()
	#F5.close()
	#F6.close()
	#F7.close()
	#F8.close()
	#F9.close()
	#F10.close()
	#F11.close()
	#F12.close()


	
def main2():
	File = open("twiNet.txt","w")
	start = time.time()
	
	itemList = ["1.1","1.2","1.3","2.1","2.2","2.3","2.4","3","4","5","6","7","8","9","10","11","12"]
	#	itemDict = {"1.1":1200000,"1.2":2400000,"1.3":3500000,"2.1":4300000,"2.2":5200000,	"2.3":6100000,"2.4":7000000,"3":10500000,"4":14000000,"5":17500000,"6":21000000,"7":24500000,"8":28000000,"9":31500000,"10":35000000,"11":38500000,"12":42000000}

	# *** Distribution of nodes by file ***
	#1.1 ->  0,000,000 -  1,199,999
	#1.2 ->  1,200,000 -  2,399,999
	#1.3 ->  2,400,000 -  3,499,999
	#2.1 ->  3,500,000 -  4,299,999
	#2.2 ->  4,300,000 -  5,199,999
	#2.3 ->  5,200,000 -  6,099,999
	#2.4 ->  6,100,000 -  6,999,999
	#3   ->  7,000,000 - 10,499,999 
	#4   -> 10,500,000 - 13,999,999
	#5   -> 14,000,000 - 17,499,999
	#6   -> 17,500,000 - 20,999,999
	#7   -> 21,000,000 - 24,499,999
	#8   -> 24,500,000 - 27,999,999
	#9   -> 28,000,000 - 31,499,999
	#10  -> 31,500,000 - 34,999,999
	#11  -> 35,000,000 - 38,499,999
	#12  -> 38,500,000 - 42,000,000

	for item in itemList:
		
		Mega = []
		for j in range(3500000):
			Mega.append([])
		
		print "Mega Initialized for %s" % item
			
		file = "ot%s.txt" % item
		tempFile = open(file,"r")
	
		for line in tempFile:
			line = line.strip()
			line = line.split()
			try:
				Mega[(int(line[0])-1) % 3500000] += line[1] + ", "
			except ValueError:
				continue

		tempFile.close()
		
		#print "Temp file %s closed" % item
		
		for j in range(3500000):
			Mega[j] += "\n"

		print "%d List Transfer Complete" % item
		
		while len(Mega) != 0:
			temp = Mega.pop(0)
			if temp != "\n":
				File.write(temp)

		print "%d File Transfer Complete"
		print (time.time()-start)
		

#writeStuff()

def Random_Walk():
	k=1


def main():
	Val_Ref = [1,1200000,2400000,3500000,4300000,5200000,6100000,7000000,10500000,14000000,17500000,21000000,24500000,28000000,31500000,35000000,38500000]
	File = open("AtoB.txt","r")
	for i in range(1,42000000):
		if i in Val_Ref:
			print i,
			File.close()
			Write_Name = Write_Select(i, "in")
			File 	   = open(Write_Name,"w")
			
		line = Struct_File(i)
		File.write(line)
		
	
	File.close()
			
	
		

def Struct_File(i): 
	#itemList = ["1.1","1.2","1.3","2.1","2.2","2.3","2.4","3","4","5","6","7","8","9","10","11","12"]
	#for item in itemList:    #NOT NEEDED HERE

	#for i in range(42000000):
	File_Name = File_Select(i, "in")
	File      = open(File_Name, "r")
	#wFile    = open(F2,"w")
	Connect   = ""
	for line in File:
		line = line.strip()
		line = line.split()
		try:
			line[1] = int(line[1])
		except ValueError:
			continue
		
		if line[1] == i:
			temp = "%s " % line[0]
			Connect += temp
			
	Connect += "\n"
	File.close()
				
	#wFile.write(line)
	return Connect
			
	
	
	
	
def File_Select(val, type): #val for node number, type for in.txt or ot.txt
	
	# *** Distribution of nodes by file ***
	
	if val < 10500000:
		if val < 4300000:
			if val < 2400000:
				if val < 1200000:
					File  = "%s1.1.txt" % type
				else:
					File  = "%s1.2.txt" % type
					
			else:	
				if val < 3500000:
					File  = "%s1.3.txt" % type
				else:
					File  = "%s2.1.txt" % type
		
		else:
			if val < 6100000:
				if val < 5200000:
					File  = "%s2.2.txt" % type
				else:
					File  = "%s2.3.txt" % type
				
			else:
				if val < 7000000:
					File  = "%s2.4.txt" % type
				else:
					File  = "%s3.txt"   % type
	
	else:
		if val < 28000000:
			if val < 17500000:
				if val < 14000000:
					File  = "%s4.txt"   % type
				else:
					File  = "%s5.txt"   % type
				
			else:
				if val < 21000000:
					File  = "%s6.txt"   % type
				elif val < 2450000:
					File  = "%s7.txt"   % type
				else:
					File  = "%s8.txt"   % type
				
		else:
			if val < 35000000:
				if val < 31500000:
					File  = "%s9.txt"   % type
				else:
					File  = "%s10.txt"  % type
				
			else:
				if val < 38500000:
					File  = "%s11.txt"  % type
				else:
					File  = "%s12.txt"  % type
			
	return File


def Write_Select(val, type): #val for node number, type for in.txt or ot.txt
	
	# *** Distribution of nodes by file ***
	
	if val < 10500000:
		if val < 4300000:
			if val < 2400000:
				if val < 1200000:
					Write = "%s0.1.txt" % type
				else:
					Write = "%s0.2.txt" % type
					
			else:	
				if val < 3500000:
					Write = "%s0.3.txt" % type
				else:
					Write = "%s0.4.txt" % type
		
		else:
			if val < 6100000:
				if val < 5200000:
					Write = "%s0.5.txt" % type
				else:
					Write = "%s0.6.txt" % type
				
			else:
				if val < 7000000:
					Write = "%s0.7.txt" % type	
				else:
					Write = "%s0.8.txt" % type
	
	else:
		if val < 28000000:
			if val < 17500000:
				if val < 14000000:
					Write = "%s0.9.txt" % type
				else:
					Write = "%s0.10.txt"% type
				
			else:
				if val < 21000000:
					Write = "%s0.11.txt"% type
				elif val < 2450000:
					Write = "%s0.12.txt"% type
				else:
					Write = "%s0.13.txt"% type
				
		else:
			if val < 35000000:
				if val < 31500000:
					Write = "%s0.14.txt"% type
				else:
					Write = "%s0.15.txt"% type
				
			else:
				if val < 38500000:
					Write = "%s0.16.txt"% type
				else:
					Write = "%s0.17.txt"% type
			
	return Write




	
"""
	if   val <  1200000:
		File = "%s1.1.txt" % type
	elif val <  2400000:
		File = "%s1.2.txt" % type
	elif val <  3500000:
		File = "%s1.3.txt" % type
	elif val <  4300000:
		File = "%s2.1.txt" % type
	elif val <  5200000:
		File = "%s2.2.txt" % type
	elif val <  6100000:
		File = "%s2.3.txt" % type
	elif val <  7000000:
		File = "%s2.4.txt" % type
	elif val < 10500000:
		File = "%s3.txt"   % type
	elif val < 14000000:
		File = "%s4.txt"   % type
	elif val < 17500000:
		File = "%s5.txt"   % type
	elif val < 21000000:
		File = "%s6.txt"   % type
	elif val < 24500000:
		File = "%s7.txt"   % type
	elif val < 28000000:
		File = "%s8.txt"   % type
	elif val < 31500000:
		File = "%s9.txt"   % type
	elif val < 35000000:
		File = "%s10.txt"  % type
	elif val < 38500000:
		File = "%s11.txt"  % type
	elif val < 42000000:
		File = "%s12.txt"  % type
		
		
	return File
	"""
	
	#1.1 ->  0,000,000 -  1,199,999
	#1.2 ->  1,200,000 -  2,399,999
	#1.3 ->  2,400,000 -  3,499,999
	#2.1 ->  3,500,000 -  4,299,999
	#2.2 ->  4,300,000 -  5,199,999
	#2.3 ->  5,200,000 -  6,099,999
	#2.4 ->  6,100,000 -  6,999,999
	#3   ->  7,000,000 - 10,499,999 
	#4   -> 10,500,000 - 13,999,999
	#5   -> 14,000,000 - 17,499,999
	#6   -> 17,500,000 - 20,999,999
	#7   -> 21,000,000 - 24,499,999
	#8   -> 24,500,000 - 27,999,999
	#9   -> 28,000,000 - 31,499,999
	#10  -> 31,500,000 - 34,999,999
	#11  -> 35,000,000 - 38,499,999
	#12  -> 38,500,000 - 42,000,000
	
	


"""
print "Read In Complete"

File = open("AtoB.txt","w")
#File = open("BtoA.txt","w")
for item in Mega:
	File.write(item) #add "\n"
	i += 1

print i,	
File.close()

"""


def ReWrite():
	#168000 for first layer
	#672    for second layer
	print "Process Starting..."

	
	j = 0
	for k in range(1,251):
		line = "Zot.%d" % k
		base = line
		Mega = open(line + ".txt", "r")
		for i in range(1,251):
			temp  = ".%d.txt" % i
			line += temp
			exec 'F%d = open("%s","w")' % (i,line)
			line = base
			
		j += 1
		
		print "All Files Opened: %d" % j
	
		i = 0
		for line in Mega:
			#print line   #DEBUGGING PURPOSES
			temp = line.strip()
			temp = temp.split()
			i += 1
			if len(temp) != 2:
				continue
			try:
				temp = int(temp[0])
			except ValueError:
				continue
			val  = ((temp % 168000)/672) + 1   #Change values as needed
			#if i % 1400000 == 0:
			#	print (i/1400000)
			#print type(line) #DEBUGGING PURPOSES
			#break 		#continue
			exec "F%d.write(%s)" % (val,"line")
		
		print "Values for Job %d Copied" % j
		
		for i in range(1,251):
			exec "F%d.close()" % i
		
		print "Job %d Complete" % j 

	Trace.close()

		
	print "Task/Project Complete"
	


def RealMain():
	
	File = open("twitter_combined.txt","r")
	Mega = []
	
	j = 0
	for line in File:
		line = line.strip()
		line = line.split()
	
		if line[0] not in Mega:
			Mega.append(line[0])
			
		j += 1
		if (j % 18000) == 0:
			print (j/18000)
			
	
	Mega.sort()
	
	File.close()
	
	print "Mega Transfer Complete"
		
	New = []
	for i in range(len(Mega)):
		New.append("%s: " % Mega[i])
		
	print "New Transfer Complete"
		
	File = open("twitter_combined.txt","r")
	
	j = 0
	for line in File:
		line = line.strip()
		line = line.split()
		New[Mega.index(line[0])] += line[1] + " "
		j += 1
		if (j % 18000) == 0:
			print (j/18000)
		
	File.close()
	
	File = open("TwitterNet","w")

	j = 0
	for line in New:
		line += "\n"
		File.write(line)
		j += 1
		if (j % 8000) == 0:
			print (j/8000)
		
	File.close()
	
	print "Project Complete"
	
#RealMain()

def convertVals():
	File = open("twitter_combined.txt","r")
	
	j = 0
	Mega = []
	for line in File:
		line = line.strip()
		line = line.split()
	
		if line[0] not in Mega:
			Mega.append(line[0])
			
		if line[1] not in Mega:
			Mega.append(line[1])
			
		j += 1
		if (j % 18000) == 0:
			print (j/18000)

	File.close()				
	Mega.sort()
	print "Mega Transfer Complete"

	
	Dict = {}
	
	for i in range(len(Mega)):
		Dict[Mega[i]] = str(i+1)
		
	print "Dictionary Conversion Complete"	

	New = []
	for i in range(1,len(Mega)+1):
		New.append("%d: " % i)
		
	print "New Transfer Complete"
		
	File = open("twitter_combined.txt","r")
	
	j = 0
	for line in File:
		line = line.strip()
		line = line.split()
		New[int(Dict[line[0]])-1] += Dict[line[1]] + " "
		j += 1
		if (j % 18000) == 0:
			print (j/18000)
		
	File.close()
	
	File = open("TwitterNet2","w")

	j = 0
	for line in New:
		line += "\n"
		File.write(line)
		j += 1
		if (j % 8000) == 0:
			print (j/8000)
		
	File.close()
	
	print "Project Complete"
	
#convertVals()
	


def RandWalk(): #81306 nodes
	
	File = open("TCL","r")
	Mega = [[]] #added an extra list to have index be the node number
	for i in range(81306):
		Mega.append([])
		
	for line in File:
		line = line.strip()
		line = line.split()
		#line = line[1:]
		
		(line[0],line[1]) = (int(line[0]),int(line[1]))
		if line[1] not in Mega[line[0]]:
			Mega[line[0]].append(line[1])
		#Remember to exclude line[0]!!!
		#for i in range(len(line)):
		#	line[i] = int(line[i])
		#Mega.append(line)	
			
	File.close()
	
	temp  = []
	Check = []
	for i in range(81306):
		temp.append(0)
		
	for i in range(81306):
		Check.append(temp)
		
	del temp
	
	start = random.randint(1,len(Mega))
	i = 1
	prob = 1
	node = start
	
	while len(Mega[node]) == 0:
		start = random.randint(1,len(Mega)-1)
		node = start

	iter = 0
	j = 0
	Connect = [[start]]
	next = random.randint(0,len(Mega[node])-1)
	while (iter < 242076500) and (i < 2420765/2):
		
		#if Check[node][next] == 0:
		val = Mega[node][next]
		Connect[j].append(val)
			#Check[node][next] = 1
		i += 1

		#END IF			

		if (len(Mega[val]) == 0) or (prob <= .15):
			node = start
			Connect.append([start])
			j += 1

		else:
			node = Mega[node][next]
			#if len(Mega[node]) == 0:
			
		
		
		next = random.randint(0,len(Mega[node])-1)
		prob = random.random()
		iter += 1
	
	
		
	File = open("TwitterTCL1.50","w")
	for i in range(len(Connect)):
		for j in range(len(Connect[i])-1):
			line = "%d %d\n" % (Connect[i][j],Connect[i][j+1])
			File.write(line)
		
	File.close()
		
	os.system('say "Project Complete"')


def RandItems():
	
	#(i < 2420765/2)
	File = open("TwitterNet2","r")
	Mega = [[]] #added an extra list to have index be the node number
	for line in File:
		line = line.strip()
		line = line.split()
		line = line[1:]
		#Remember to exclude line[0]!!!
		for i in range(len(line)):
			line[i] = int(line[i])
		Mega.append(line)	
			
	File.close()
	
	temp  = []
	Check = []
	for i in range(81306):
		temp.append(0)
		
	for i in range(81306):
		Check.append(temp)
		
	del temp
	
	
	File2 = open("twitter_combined2.txt","w")
	
	prob = random.random()
	for i in range(len(Mega)):
		for j in range(len(Mega[i])):
			File2.write("%d %d\n" % (i, Mega[i][j]))
	
	File2.close()
	
		
	os.system('say "Project Complete"')
		


def CountItems():
	
	File = open("TwitterNet2","r")
	Mega = [[]]
	for line in File:
		line = line.strip()
		line = line.split()
		#Remember to exclude line[0]!!!
		for i in range(1,len(line)):
			line[i] = int(line[i])
		Mega.append(line)	
			
	File.close()
	
	Len = 0
	for i in range(len(Mega)):
		Len += len(Mega[i]) - 1
		
	print Len
	
	File = open("twitter_combined.txt","r")
	for line in File:
		Len -= 1
		
	print
	print Len
	
RandWalk()