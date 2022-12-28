```python
'''
anonymous functions
way to define functions in one line
one use functions

part of a paradigm called FUNCTIONAL Programming
as opposed to OOP

many times list comprehensions are just as abbreviated

can be useful for performing a quick transformation
on an argument into another function

'''

# instead of


def square_x(x):
    return x**2


# this
squared = lambda x: x**2


print(squared(10))

print(square_x(10))

# combine first and last name (firstname = fn lastname = ln)

full_name = lambda fn, ln: fn.strip().title() + " " + ln.strip().title()
print(full_name("  jUpiTer ", "  RosenCrantZ "))

```