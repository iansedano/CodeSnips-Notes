def spiralTraverse(array):
	print("ARRAY", array)
    width = len(array)
	height = len(array[0])
	elements = width * height
	
	output = []
	
	while len(array) > 0:
		first_row = array.pop(0)
		for i in first_row:
			output.append(i)
		print(output)
	
		if len(array) == 0 or len(array[0]) == 0:
			break
		
		for row in array:
			output.append(row.pop())
		print(output)
		
		if len(array) == 0 or len(array[0]) == 0:
			break
			
		last_row = array.pop()
		for i in range(len(last_row)-1, -1, -1):
			output.append(last_row[i])
		print(output)
		
		if len(array) == 0 or len(array[0]) == 0:
			break
		
		for i in range(len(array)-1, -1, -1):
			output.append(array[i].pop(0))

	
	print("RETURN", output)
	return output
