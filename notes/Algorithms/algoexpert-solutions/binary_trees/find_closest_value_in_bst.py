# avg O(log(n)) time  O(log(n)) space
# Worse O(n) time  O(n) space

def findClosestValueInBst(tree, target):

    closest = tree.value
    
    while True:
        if abs(tree.value - target) < abs(closest - target):
            closest = tree.value
        if tree.value > target:
            if tree.left is None:
                return closest
            else:
                tree = tree.left
        elif tree.value < target:
            if tree.right is None:
                return closest
            else:
                tree = tree.right
        else:
            return closest