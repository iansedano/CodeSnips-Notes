# Both are O(n) for time and space

class BinaryTree:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None


def branchSums(root):
    sum_array = []
    get_sums(root, 0, sum_array)
    return sum_array



def get_sums(node, total, sum_array):
    total += node.value
    if node.left:
        get_sums(node.left, total, sum_array)
    if node.right:
        get_sums(node.right, total, sum_array)
    if not node.left and not node.right:
        sum_array.append(total)



def get_sums2(node, total, sum_array):
    if not node:
        return
    
    total += node.value
    if not node.left and not node.right:
        sum_array.append(total)
        
    get_sums(node.left, total, sum_array)
    get_sums(node.right, total, sum_array)