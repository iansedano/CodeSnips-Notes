def selectionSort(array):
    sortedarr = []
	
	while len(array) > 0:
		smallest = float('inf')
		index = -1
		for i, item in enumerate(array):
			if item < smallest:
				smallest = item
				index = i
		
		sortedarr.append(array.pop(index))
		
    return sortedarr