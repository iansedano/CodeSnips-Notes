# O(n) for time and space
def maxSubsetSumNoAdjacent(array):
    if len(array) == 0:
        return 0
    else:
        store = []
        for i, num in enumerate(array):
            if i == 0 :
                store.append(num)
            elif i == 1:
                store.append( max(array[1], array[0]) )
            else:
                store.append( max(num + store[i-2], store[i-1]) )
        return max(store)

# O(n) for time and O(1) for space

def maxSubsetSumNoAdjacent(array):
    if len(array) == 0:
        return 0
    elif len(array) == 1:
        return array[0]
    i_minus_two = array[0]
    i_minus_one = max(array[1], array[0])
    for i in range(2, len(array)):
        current = max(i_minus_one, i_minus_two + array[i])
        i_minus_two = i_minus_one
        i_minus_one = current
    return i_minus_one