def insertionSort(array):
	subarr = []
	for item in array:
		subarr = addToSub(item, subarr)
	return subarr

def addToSub(item, subarr):
	length = len(subarr)
	
	if length > 0:
		for j in range(length,0,-1):
			if subarr[j-1] < item:
				subarr.insert(j, item)
				return subarr
			elif j-1 == 0:
				subarr.insert(j-1, item)
				return subarr
	else:
		subarr.append(item)
		return subarr