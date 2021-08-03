# Solution 1 O(n^2)

def twoNumberSum(array, targetSum):
    while len(array) > 0:
        seeking = targetSum - array[-1]
        try:
            answer = array.index(seeking)
            return [array[-1], array[answer]]
        except:
            array.pop()
    return array

# Solution 2 O(n)

def twoNumberSum(array, targetSum):
    myset = set()
    for x in array:
        seeking = targetSum - x
        if seeking in myset:
            return [seeking, x]
        else:
            myset.add(x)
        print(myset)
    return []
    