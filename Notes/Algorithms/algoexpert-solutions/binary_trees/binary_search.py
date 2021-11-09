
# O(log(n) time   O(1) space

def binarySearch(array, target):
    
    if len(array) == 0:
        return -1
    if len(array) == 1:
        if array[0] == target:
            return 0
        else:
            return -1
        
    if len(array) == 2:
        if array[0] == target:
            return 0
        elif array[1] == target:
            return 1
        else:
            return -1
    
    i = int(len(array) / 2) 
    if array[i] == target:
        return i
    elif array[i] > target:
        result = binarySearch(array[:i+1], target)
        return result
    elif array[i] < target:
        result = binarySearch(array[i:], target)
        if result == -1:
            return -1
        else:
            return i + result
    else:
        return -1



## Neater version

def binarySearch(array, target):
    
    return searchHelper(array, target, 0, len(array) - 1)
    
    
def searchHelper(array, target, left, right):
    if left > right:
        return -1
    
    middle = (left + right) // 2
    if array[middle] == target:
        return middle
    elif array[middle] > target:
        return searchHelper(array, target, left, middle - 1)
    elif array[middle] < target:
        return searchHelper(array, target, middle + 1, right)