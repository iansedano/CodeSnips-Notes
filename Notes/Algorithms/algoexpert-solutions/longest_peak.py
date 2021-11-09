def longestPeak(array):
	print(array)
    peak = 0
	
	# start, up, down, end
	
	for i in range(1, len(array)-1):
		if array[i] > array[i-1] and array[i] > array[i+1]:
			left = 2
			right = 2
			temp_peak = 3
			
			while i - left >= 0:
				if array[i - left] < array[i - left + 1]:
					temp_peak += 1
					left += 1
				else:
					break
			
			while i + right <= len(array) - 1:
				if array[i + right] < array[i + right - 1]:
					temp_peak += 1
					right += 1
				else:
					break
			if temp_peak > peak:
				peak = temp_peak
			
	return peak
