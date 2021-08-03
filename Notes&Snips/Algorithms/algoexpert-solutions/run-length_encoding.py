def runLengthEncoding(string):
    newstr = []
	count = 0
    
	for i, c in enumerate(string):
		count += 1

		if i != len(string) - 1:
			if string[i+1] == c:
				if count >= 9:
					newstr.append(str(count) + c)
					count = 0
			else:
				newstr.append(str(count) + c)
				count = 0
		else:
			newstr.append(str(count) + c)
			count = 0
		
	
    return ''.join(newstr)
