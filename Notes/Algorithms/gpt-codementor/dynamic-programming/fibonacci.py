
memo = {0:0, 1:1}

def fibonacci(n):
    """
    Calculate the nth Fibonacci number using dynamic programming.

    >>> fibonacci(0)
    0
    >>> fibonacci(1)
    1
    >>> fibonacci(5)
    5
    >>> fibonacci(10)
    55
    >>> fibonacci(15)
    610
    """
    if n not in memo:
        memo[n] = fibonacci(n-1) + fibonacci(n-2)
    
    return memo[n]
    