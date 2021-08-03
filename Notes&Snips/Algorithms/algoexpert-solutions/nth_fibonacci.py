# O(2^n) Time  O(n) Space
def getNthFib(n):
    if n == 1:
        return 0
    elif n == 2:
        return 1
    total = getNthFib(n-1) + getNthFib(n-2)
    return total


# O(n) time  O(n) space
def getNthFib(n, cache={1: 0, 2: 1}):
    if n in cache:
        return cache[n]
    cache[n] = getNthFib(n-1, cache) + getNthFib(n-2, cache)
    return cache[n]


# O(n) time  O(1) space
def getNthFib(n):

    mem = [0, 1]

    if n < 2:
        return mem[n-1]
    count = 3

    while count <= n:
        next_num = mem[0] + mem[1]
        mem[0] = mem[1]
        mem[1] = next_num
        count += 1

    return mem[1]
