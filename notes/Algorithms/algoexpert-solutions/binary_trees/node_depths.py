
# O(n) for time O(h) for space where h is height of tree if roughly balanced.

# This is the class of the input binary tree.

class BinaryTree:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None


# Recursive solution
def nodeDepths(root):
    return node_depth_summer(root, 0)
        
def node_depth_summer(node, depth):
    if not node:
        return 0
    
    total = depth
    
    total += node_depth_summer(node.left, depth + 1)
    total += node_depth_summer(node.right, depth + 1)
    
    return total


# Iterative solution (with stack)
def nodeDepths(root):
    stack = [{'node': root, 'depth': 0}]
    total = 0
    while len(stack) > 0:
        
        current_element = stack.pop()
        current_node = current_element['node']
        if not current_node:
            continue
        current_depth = current_element['depth']
        
        stack.append(
            {
                'node': current_node.left,
                'depth': current_depth + 1
            }
        )
            
        stack.append(
            {
                'node': current_node.right,
                'depth': current_depth + 1
            }
        )
        
        total += current_depth
        
    return total