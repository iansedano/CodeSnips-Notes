def moveElementToEnd(array, toMove):
    how_many_moved = 0
	i = 0
	
	while i < len(array) - how_many_moved:
		n = array[i]
		if n == toMove:
			item = array.pop(i)
			array.append(item)
			how_many_moved += 1
		elif n != toMove:
			i += 1
			
	return array
	

"""
Then saw their version using pointers and wrote:
"""

def moveElementToEnd(array, toMove):
	l = 0
	r = len(array) - 1
	while l < r:
		while array[r] == toMove and r > l:
			r -= 1
		if array[l] == toMove:
			temp = array[l]
			array[l] = array[r]
			array[r] = temp
		elif array[l] != toMove:
			l += 1
	return array
