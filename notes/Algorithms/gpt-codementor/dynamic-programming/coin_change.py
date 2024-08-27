def coin_change(coins, amount):
    """
    Find the minimum number of coins that make up a given amount.

    >>> coin_change([1, 2, 5], 11)
    3
    >>> coin_change([2], 3)
    -1
    >>> coin_change([1], 0)
    0
    >>> coin_change([1], 2)
    2
    """

    dp = [0] + [float("inf")] * (amount)
    for i in range(1, amount + 1):
        for coin in coins:
            if i < coin:
                continue
            dp[i] = min(dp[i], dp[i - coin] + 1)

    return dp[-1] if dp[-1] < float("inf") else -1
