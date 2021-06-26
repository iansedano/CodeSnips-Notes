```python
'''

syntax for args and kwagrs is * and ** respectively

"args" and "kwargs" are only convention.

'''

# *args is for arbitrary number of arguments passed to function


def add_all(*nums): # nums becomes tuple
    _sum = 0
    for n in nums:
        _sum += n
    return _sum


print(add_all(2, 3, 4, 5, 6, 3))


# **kwargs allow handling of named arguments not defined.

def print_all(**kwargs): # kwargs becomes dictionary
    print(kwargs)


print(print_all(apple='fruit', cabbage='vegetable'))
```