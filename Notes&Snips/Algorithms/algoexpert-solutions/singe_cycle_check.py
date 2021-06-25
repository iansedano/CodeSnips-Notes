"""
array of integers each integer is jump of its
value.

If a jump spills past the array's bounds, it wraps
"""

def hasSingleCycle(array):
    
	positions = []
	for i in range(len(array)):
		positions.append(False)
	ptr = 0
	count = 1
	for i in range(len(array)):
		if positions[ptr] == True:
			return False
		positions[ptr] = True
		ptr_temp = ptr + array[ptr]
		if ptr == ptr_temp:
			return False
		ptr = ptr_temp
		ptr = ptr % len(array)

	if ptr == 0 and positions[0] == True:
		return True
	else:
		return False

"""
Tests
[2, 3, 1, -4, -4, 2]
[2, 2, -1]
[2, 2, 2]
[1, 1, 1, 1, 1]
[10, 11, -6, -23, -2, 3, 88, 909, -26]
[1, -1, 1, -1]
"""

"""
Their solution assumes that if the cycle lands back on 0
when the total number of positions have been covered then
it must be a single cycle. Whereas my solution creates a
checking array, if any value is visited twice it returns
false as soon as it encounters it.
"""