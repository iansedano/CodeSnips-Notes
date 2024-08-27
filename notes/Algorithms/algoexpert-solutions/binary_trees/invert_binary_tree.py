
# Recursive solution O(n) time O(d) space

# This can be more concise by checking for none
# at the beginning instead of each branch
def invertBinaryTree(tree):
    swap(tree)
	if tree.left is not None:
		invertBinaryTree(tree.left)
	if tree.right is not None:
		invertBinaryTree(tree.right)
    return tree

def swap(node):
	tmp = node.left
	node.left = node.right
	node.right = tmp

# This is the class of the input binary tree.
class BinaryTree:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None


# Iterative? Solution using while loop O(n) time O(n) space.

# This can also be more concise by checking for none
# at the beginning instead of each branch
def invertBinaryTree(tree):
	q = [tree];
	while len(q):
		current = q.pop(0);
		swap(current)
		if current.left is not None:
			q.append(current.left)
		if current.right is not None:
			q.append(current.right)
	return tree