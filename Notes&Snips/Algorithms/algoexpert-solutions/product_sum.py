# {"array": [5, 2, [7, -1], 3, [6, [-13, 8], 4]]}
# 5
# 7
# 7 + (2 * (7 + 1)) etc

# O(n) time   O(d) space where d is greatest depth.

def productSum(array):
    _sum = 0
    _sum = productSumHelper(array, _sum, 1)
    return _sum

def productSumHelper(array, _sum, depth):
    for element in array:
        if isinstance(element, list):
            _sub_sum = 0
            _sum += productSumHelper(element, _sub_sum, depth + 1)
        elif isinstance(element, int):
            _sum += element
    _sum *= depth
    return _sum



## Tidied up

def productSum(array, depth=1):
    _sum = 0
    for element in array:
        if isinstance(element, list):
            _sum += productSum(element, depth + 1)
        elif isinstance(element, int):
            _sum += element
    return _sum * depth
