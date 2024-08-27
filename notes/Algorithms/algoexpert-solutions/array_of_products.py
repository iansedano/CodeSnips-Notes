def arrayOfProducts(array):

    print("ARRAY", array)

    right = []
    left = []

    for i, n in enumerate(array):
        if i == 0:
            left.append(n)
        else:
            left.append(n * left[-1])

    for i, n in enumerate(reversed(array)):
        if i == 0:
            right.insert(0, n)
        else:
            right.insert(0, n * right[0])

    output = []
    for i in range(len(array)):
        if i == 0:
            output.append(right[i + 1])
        elif i == len(array) - 1:
            output.append(left[i - 1])
        else:
            output.append(left[i - 1] * right[i + 1])
    print("l", left, "r", right)
    print(output)
    return output
