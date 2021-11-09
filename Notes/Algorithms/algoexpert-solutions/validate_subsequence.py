# O(n) time O(1) space

def isValidSubsequence(array, sequence):

    seq_index = 0

    for x in array:
        if sequence[seq_index] == x:
            seq_index += 1
        if seq_index > len(sequence) - 1:
            return True

    return False