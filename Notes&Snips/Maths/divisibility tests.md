### Divisibility tests

2 - look at last digit, if divisible by 2
3 - add all the numbers in number and check if divisible by 3
4 - last two digits, if divisible by 4
5 - last digit, if divisible by 5
6 - if divisible by both 2 & 3
9 - add all digits similar to 3

### Divisibility by 7

If number in form

$10x + y$

is divisible by 7 when

$x - 2y$

is divisible by 7

so:

$$
	847 = 84 * 10 + 7
	x - 2y
		= 84 - 14
		= 70
$$

### Divisibility by 11

Split the number and starting with the unit place subtract the next number, then add the next, then subtract...

If the result is a multiple of 11 then the number is also!

False Positives under 300:

    2, 3, 5, 7, 11, 169 (13^2), 221, 247, 289, 299