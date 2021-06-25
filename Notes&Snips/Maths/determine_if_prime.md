# Prime numbers

A prime can be divided without remainder _only_ by itself and 1.

### Formal way

Find biggest perfect square

    k^2 <= n

Write all primes less than or equal to k

Test if n is divisible by each prime!


### Fast way

https://math.stackexchange.com/questions/783393/a-quick-way-to-determine-whether-a-number-is-prime-by-hand

If number ends in:

    0, 2, 4, 5, 6 or 8   NOT PRIME

If number is multiple of 3, NOT PRIME


For numbers under 100, only false positives are

    49 = 7^2
    77 = 7 * 11
    91 = 7 * 13

