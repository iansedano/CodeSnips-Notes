def threeNumberSum(array, targetSum):
    
	array.sort()
	
	print(array)
	
	l = 0 # left pointer
	m = 1 # middle pointer
	r = len(array) - 1 # right pointer
	
	output = []
	
	while True:
		pset = [array[l], array[m], array[r]]
		psum = sum(pset)
		
		print(l,m,r,"/", array[l], array[m], array[r],"/",psum)
		
		if l + 1 >= m and m + 1 >= r:
			if psum == targetSum:
				print("appending")
				output.append(pset)
			return output
		
		elif m + 1 >= r:
			if psum == targetSum:
				print("appending")
				output.append(pset)
			l = l + 1
			m = l + 1
			r = len(array) - 1
			
		elif m + 1 < r:
			if psum == targetSum:
				print("appending")
				output.append(pset)
				if m + 1 != r - 1:
					m = m + 1
					r = r - 1
				elif m + 1 == r - 1:
					m = m + 1
			elif psum > targetSum:
				r = r - 1
			elif psum < targetSum:
				m = m + 1


"""
Second attempt with glance at their soultion

The key to making it more concise was knowing how many iterations it would take in advance.
Since you know that the left pointer will move to 2 - length of array as a max, you can
make a for loop.
"""

def threeNumberSum(array, targetSum):
	array.sort()
	output = []
	
	for l in range(len(array) - 2):
		m = l + 1
		r = len(array) - 1
		
		while m < r:
			
			pset = [array[l], array[m], array[r]]
			psum = sum(pset)
			
			if psum == targetSum:
				output.append(pset)
				m = m + 1
				r = r - 1
			elif psum > targetSum:
				r = r - 1
			elif psum < targetSum:
				m = m + 1
		
	return output