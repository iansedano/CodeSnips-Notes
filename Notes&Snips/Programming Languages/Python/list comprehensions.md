```python
# Abbreviated ways to make lists

h_letters = []

for letter in 'human':
    h_letters.append(letter)

print(h_letters)

h_letters = [letter + 'wow' for letter in 'human']

# This:
shark_letters = [letter for letter in 'shark']
print(shark_letters)

# is equivalent to this:
shark_letters = []

for letter in 'shark':
    shark_letters.append(letter)

print(shark_letters)

# CONDITIONALS

number_list = [x for x in range(20) if x % 2 == 0]
print(number_list)

number_list2 = [y for y in range(100) if y % 2 == 0 if y % 5 == 0]
print(number_list2)

obj = ["Even" if i % 2 == 0 else "Odd" for i in range(10)]
print(obj)

# EXAMPLE
'''
We’ll create another example that uses mathematical operators,
integers, and the range() sequence type.
'''

number_list = [x ** 2 for x in range(10) if x % 2 == 0]
print(number_list)

'''
The list that is being created, number_list,
will be populated with the squared values of each item
in the range from 0-9 if the item’s value is divisible by 2.
The output is as follows:

# output [0, 4, 16, 36, 64]

To break down what the list comprehension is doing a little more,
let’s think about what would be printed out
if we were just calling x for x in range(10).
Our small program and output would then look like this:
'''

number_list = [x for x in range(10)]
print(number_list)

# output [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# Now, let’s add the conditional statement:

number_list = [x for x in range(10) if x % 2 == 0]
print(number_list)

# output [0, 2, 4, 6, 8]

'''
The if statement has limited the items in the final list
to only include those items that are divisible by 2,
omitting all of the odd numbers.

Finally, we can add the operator to have each x squared:
'''

number_list = [x ** 2 for x in range(10) if x % 2 == 0]
print(number_list)

'''
So each of the numbers in the previous list of [0, 2, 4, 6, 8]
are now squared:

# [0, 4, 16, 36, 64]

You can also replicate nested if statements with a list comprehension:
'''

number_list = [x for x in range(100) if x % 3 == 0 if x % 5 == 0]
print(number_list)

'''
Here, the list comprehension will first check to see if the number x
is divisible by 3, and then check to see if x is divisible by 5.
If x satisfies both requirements it will print, and the output is:

# [0, 15, 30, 45, 60, 75, 90]

Conditional if statements can be used to control
which items from an existing sequence are included
in the creation of a new list.
'''

# NESTED

transposed = []
matrix = [[1, 2, 3, 4], [4, 5, 6, 8]]

for i in range(len(matrix[0])):
    transposed_row = []

    for row in matrix:
        transposed_row.append(row[i])
    transposed.append(transposed_row)

print(transposed)

matrix = [[1, 2], [3, 4], [5, 6], [7, 8]]
transpose = [[row[i] for row in matrix] for i in range(2)]
print(transpose)

```