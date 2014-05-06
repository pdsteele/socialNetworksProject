def Directed_ChungLu():
	Edges = Set()
	Q     = Queue()
	M     = num_edges
	for i = 1 to M:
		if Q.isEmpty()
			v_j = Node_Select(In_Degree_eCDF)
		else
			v_j = Q.dequeue()		
		v_i = Node_Select(Out_Degree_eCDF)
		if (v_i,v_j) not in Edges:
			Edges.add((v_i,v_j))
		else:
			Q.enqueue(v_i)
			Q.enqueue(v_j)			
	return Edges

def Directed_TransChungLu():
	PQ    = PriorityQueue()
	Edges = Directed_ChungLu()
	M     = num_edges
	for i = 1 to M:
		if PQ.isEmpty():
			v_j = Node_Select(In_Degree_eCDF)
		else:
			v_j = PQ.dequeue()
		r = Bernouli(p)
		if r == 1:
			v_k = Uniform_Select(Edges, v_j)
			v_i = Uniform_Select(Edges, v_k)		
		else:
			v_i = Node_Select(Out_Degree_eCDF, prob)
		if (v_i,v_j) not in Edges:
			Edges.add((v_i,v_j))
			Edges.remove(Earliest_Added_Node)
		else:
			PQ.enqueue(v_i, Frequency)
			PQ.enqueue(v_j, Frequency)
	return edges