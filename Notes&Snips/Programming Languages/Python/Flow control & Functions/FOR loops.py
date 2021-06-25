# FOR LOOPS
# you can use CONTINUE and BREAK statements only inside while and for loops

print('My name is')
for i in range(5):
    print('Jimmy Five Times (' + str(i) + ')')

# this while loop is identical in function to above for loop
print('My name is')
i = 0
while i < 5:
    print('Jimmy Five Times (' + str(i) + ')')
    i = i + 1

print()
print()

total = 0
for num in range(101):
    total = total + num
print(total)

print()
print()

for i in range(12, 16):
    print(i)

print()
print()

# The first two arguments will be the start and stop values,
# and the third will be the step argument.
for i in range(0, 10, 2):
    print(i)

print()
print()

for i in range(5, -1, -1):
    print(i)
