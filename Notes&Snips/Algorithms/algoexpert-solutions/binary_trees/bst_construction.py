
'''
If node to remove is parent

If node to remove has no children

If node to remove has only left or right branch

If node to replace has children

If node to replace is direct child of node to remove


'''


COUNT = [5]  

# Function to print binary tree in 2D  
# It does reverse inorder traversal  
def print2DUtil(root, space) : 
  
	# Base case  
	if (root == None) : 
		return
  
	# Increase distance between levels  
	space += COUNT[0] 
  
	# Process right child first  
	print2DUtil(root.right, space)  
  
	# Print current node after space  
	# count  
	print()  
	for i in range(COUNT[0], space): 
		print(end = " ")  
	print(root.value)  
  
	# Process left child  
	print2DUtil(root.left, space)  
  
# Wrapper over print2DUtil()  
def print2D(root) : 
	  
	# space=[0] 
	# Pass initial space count as 0  
	print("======================")
	print2DUtil(root, 0) 
	print("======================")

class BST:

	def __init__(self, value):
		self.value = value
		self.left = None
		self.right = None

	def insert(self, value):

		if value >= self.value:
			if self.right is None:
				self.right = BST(value)
			else:
				self.right = self.right.insert(value)
		else:
			if self.left is None:
				self.left = BST(value)
			else:
				self.left = self.left.insert(value)

		return self

	def find_node(self, value, parent=None, parentSide=None):

		if value != self.value:
			if value >= self.value and self.right is not None:
				return self.right.find_node(value, self, "right")
			elif value < self.value and self.left is not None:
				return self.left.find_node(value, self, "left")
			else:
				return None
		else:
			return [self, parent, parentSide]

	def contains(self, value):

		if self.find_node(value) is None:
			return False
		else:
			return True

	def remove(self, value):

		node, parent, side = self.find_node(value)

		# print(f"node value {node.value} on {side} of parent value {parent.value}")

		# ==== Identifying Replacement ====
		if node is not None:  # This is the one to remove
			print("FOUND, removing...")

			# If node to remove has no children:
			if node.left is None and node.right is None:
				print("Node to remove has no children...")
				if parent is not None:
					setattr(parent, side, None)
					return self
				else: # If node to remove has no parent i.e. root node
					print("Root node deleted.")
					return None

			# If node to remove has children
			# Identify which node will replace it
			print("Node to remove has children!")
			if node.right is not None:
				print("Finding left most node in right branch")
				rplmt_node, rplmt_parent= node.right.left_most()
				print(f"Replacement node is {rplmt_node.value}")
				rplmt_branch = "right"
				if rplmt_parent is not None:
					rplmt_parent_side = "left"
				else:
					print("replacement node is direct child of node")
					rplmt_parent_side = "right"
					rplmt_parent = node

			elif node.left is not None:
				print("Finding right most node in left branch")
				rplmt_node, rplmt_parent= node.left.right_most()
				print(f"Replacement node is {rplmt_node.value}")
				rplmt_branch = "left"
				if rplmt_parent is not None:
					rplmt_parent_side = "right"
				else:
					print("replacement node is direct child of node")
					rplmt_parent_side = "left"
					rplmt_parent = node

			print(f"Node {node.value} to be replaced with {rplmt_node.value}")
			print(f"Node is on {side} of parent")
			print(f"Replacement node is on {rplmt_parent_side} of parent")

			# ==== REPLACEMENT ====

			# If replacement node is direct child of node to replace
			if rplmt_parent is node:
				print("swapping replacement node as direct child of node")
				if rplmt_parent_side == "left":
					rplmt_node.right = node.right
				elif rplmt_parent_side == "right":
					rplmt_node.left = node.left

			else:
				print("swapping nodes")
				if rplmt_parent_side == "left":
					setattr(rplmt_parent, rplmt_parent_side, rplmt_node.right)
				elif rplmt_parent_side == "right":
					setattr(rplmt_parent, rplmt_parent_side, rplmt_node.left)
				rplmt_node.left = node.left
				rplmt_node.right = node.right

			if parent is not None:
				setattr(parent, side, rplmt_node)
			else:
				self.value = rplmt_node.value
				self.left = rplmt_node.left
				self.right = rplmt_node.right


		return self


	def left_most(self, parent=None):
		if self.left is None:
			return [self, parent]
		else:
			return self.left.left_most(self)

	def right_most(self, parent=None):
		if self.right is None:
			return [self, parent]
		else:
			return self.right.right_most(self)


def build(instructions):
	root = instructions.pop(0)
	b = BST(root)

	for n in instructions:
		b.insert(n)

	print2D(b)

	return b

test1 = [10,5,15,2,5,13,22,1,14,12]
test2 = [1,2,3]
test3 = [15]
test4 = [20,1,2,3,4,5,6,7,8,9]
test5 = [10,8,15,14,11,12]
test6 = [10,8,15,11,12,13]
test7 = [10,5,20,15,30,23,31,25,27,24]


b1 = build(test1)



b1.remove(10)
# b1.remove(1)
# b1.remove(2)
# b1.remove(5)

print2D(b1)




