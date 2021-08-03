def isPalindrome(string):
    length = len(string)
	if length == 0:
		return False
	else:
		strarr = list(string)
		if length % 2 == 0:
			rng = int(len(string) /2)
		else:
			rng = int((1 + len(string)) /2)

		for i in range(rng):
			print("first", i, "last", -i-1)
			if strarr[i] != strarr[-i-1]:
				return False
		
		return True


# or of course, create new string that is reversed and check if equal.

