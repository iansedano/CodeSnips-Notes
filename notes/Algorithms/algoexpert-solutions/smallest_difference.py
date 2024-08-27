"""
Find smallest difference of two numbers between two lists.
The two numbers have to be from the separate lists.

O(nlog(n) + mlog(m)) time  O(1) space
"""

def smallestDifference(arrayOne, arrayTwo):
    
	arrayOne.sort()
	arrayTwo.sort()

	ptrOne = 0
	ptrTwo = 0
	
	while ptrOne < len(arrayOne) and ptrTwo < len(arrayTwo):
		
		diff = abs(arrayOne[ptrOne] - arrayTwo[ptrTwo])
		print(ptrOne, ptrTwo, diff)
		
		if diff == 0:
			return [arrayOne[ptrOne], arrayTwo[ptrTwo]]
		elif diff < minDiff[0]:
			minDiff[0] = diff
			minDiff[1] = [arrayOne[ptrOne], arrayTwo[ptrTwo]]
	
		if arrayOne[ptrOne] < arrayTwo[ptrTwo]:
			ptrOne += 1
		elif arrayOne[ptrOne] > arrayTwo[ptrTwo]:
			ptrTwo += 1
	
    return minDiff[1]