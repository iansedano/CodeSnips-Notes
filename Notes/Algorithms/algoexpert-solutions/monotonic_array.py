# An array is said to be monotonic if its elements, from left to right, are entirely non-increasing or entirely non-decreasing.

def isMonotonic(array):
    print(array)
	length = len(array)
	
	if length <= 1:
		return True
	else:
		if array[0] < array[-1]:
			direction = 1
		elif array[0] > array[-1]:
			direction = -1
		elif array[0] == array[-1]:
			direction = 0
	
	if direction == 1:
		for i in range(length -1):
			if array[i] > array[i+1]:
				return False
			
	elif direction == -1:
		for i in range(length -1):
			if array[i] < array[i+1]:
				return False
		
	elif direction == 0:
		for i in range(length -1):
			if array[i] != array[i+1]:
				return False
	
	return True
