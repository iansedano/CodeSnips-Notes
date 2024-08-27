def climb_stairs_recursive(n, memo={0: 1, 1: 1, 2: 2}):
    """
    Calculate the number of ways to climb to the top of a staircase with n steps.

    >>> climb_stairs_recursive(2)
    2
    >>> climb_stairs_recursive(3)
    3
    >>> climb_stairs_recursive(4)
    5
    >>> climb_stairs_recursive(5)
    8
    """

    if n in memo:
        return memo[n]
    memo[n] = climb_stairs_recursive(n - 1, memo) + climb_stairs_recursive(n - 2, memo)

    return memo[n]


def climb_stairs_iter(n):
    """
    Calculate the number of ways to climb to the top of a staircase with n steps.

    >>> climb_stairs_iter(2)
    2
    >>> climb_stairs_iter(3)
    3
    >>> climb_stairs_iter(4)
    5
    >>> climb_stairs_iter(5)
    8
    """

    first, second = 1, 1

    for i in range(2, n + 1):
        first, second = second, first + second

    return second


if __name__ == "__main__":
    climb_stairs_iter(5)
