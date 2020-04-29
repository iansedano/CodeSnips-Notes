'''
Generators to iterate without saving a list into memory

List comprehension is faster but loads memory
Generator slower, but less memory... though it wont have to build list.


'''
# list comprehension
xyz = [i for i in range(10)]
print(xyz)

# generator expression - just using round brackets instead of square ones...
xyz = (i for i in range(10))

for i in xyz:
    print(i)
