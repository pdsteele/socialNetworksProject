class Queue():
	def __init__(self):
		self._head  = None
		self._tail  = None
		self._count = 0
		
	def __len__(self):
		return self._count
		
	def isEmpty(self):	
		return self._head is None
		
	def enqueue(self, data):
		if self._head is None:
			self._head      = _Node(data)
			self._tail      = self._head
		
		else:
			self._tail.next = _Node(data)
	
		self._count += 1
		
	
	def dequeue(self):
		assert not self.isEmpty()

		curNode      = self._head
		self._head   = self._head.next
		curNode.next = None
		self._count -= 1

		return curNode
		
		
		
class PriorityQueue():
	def __init__(self):
		self._head  = None
		self._tail  = None
		self._count = 0
		
	def __len__(self):
		return self._count
		
	def isEmpty(self):	
		return self._head is None
		
	def enqueue(self, data, prob):
		if self._head is None:
			self._head = _PNode(data, prob)
			self._tail = self._head
		
		else:
			Node       = _PNode(data, prob)
			breakVal   = 0
			
			if self._head.prob < Node.prob:
				Node.next   = self._head
				self._head  = Node
				breakVal    = 1
				
			elif self._tail.prob >= Node.prob:
				self._tail.next   = Node
				self._tail        = self._tail.next
				breakVal 		  = 1
			
			curNode    = self._head	
			while (breakVal == 0): # and (curNode is not None)
				if curNode.next.prob >= Node.prob:
					curNode      = curNode.next
				else:
					Node.next    = curNode.next
					curNode.next = Node
					breakVal = 1
					
			
		self._count += 1
	
	
	def dequeue(self):
		assert not self.isEmpty()

		curNode      = self._head
		self._head   = self._head.next
		curNode.next = None
		self._count -= 1

		return curNode
		
		
		
class _Node():
	def __init__(self, data):
		self.data = data
		self.next = None
		
		
class _PNode():
	def __init__(self, data, prob):
		self.data = data
		self.prob = prob
		self.next = None