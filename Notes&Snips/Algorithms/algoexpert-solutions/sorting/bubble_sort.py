def bubbleSort(array):
	
    sort_status = False
	
	if len(array) < 2:
		return array
	
	while sort_status == False:
		sort_status = True
		for i in range(len(array) - 1):
			current_pos = array[i]
			next_pos = array[i + 1]
			if next_pos < current_pos:
				swap_current_with_next(i, array)
				sort_status = False
	
	return array

def swap_current_with_next(start_index, array):
	temp = array[start_index]
	next_index = start_index + 1
	
	array[start_index] = array[next_index]
	array[next_index] = temp