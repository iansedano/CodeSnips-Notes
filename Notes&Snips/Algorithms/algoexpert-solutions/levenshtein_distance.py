def levenshteinDistance(str1, str2):
    str1 = list(str1)
	str2 = list(str2)
	str1.insert(0,"")
	str2.insert(0,"")
	print(str1, str2)
	
	matrix = []
	
	for i, l1 in enumerate(str1):
		matrix.append([])
		for j, l2 in enumerate(str2):
			if i == 0:
				print("first row")
				matrix[i].append(j)
			elif j == 0:
				print("first col")
				matrix[i].append(len(matrix) - 1)
			elif l1 == l2:
				print("same letter")
				matrix[i].append(matrix[i-1][j-1])
			else:
				matrix[i].append(min(
					matrix[i][j-1],
					matrix[i-1][j],
					matrix[i-1][j-1]
				) + 1)
			
	print(matrix)
    return matrix[-1][-1]
