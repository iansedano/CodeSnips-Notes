```python
'''

Decorators is a term used to describe a 'level' of a function

A decorator function takes another function and extends
the behavior of it without explicitly modifying it.

Decorator is a function that takes in a function          
and then outputs the function with extra code.            
                                                              
 +-----------+       +-----------+     +-------------+        
 | Function  --------> Decorator ------> Function +  |        
 +-----------+       +-----------+     +-------------+ 


Functions are objects in python, so they can be manipulated
in many ways that are similar to variables.

'''

def say_hello(name):
    return f"hello {name}"

def be_awesome(name):
    return f"{name}, you are awesome"

def greet_bob(greeter_func):   # takes function as argument
    return greeter_func("Bob") # calls selected greeter func with Bob as argument

'''
>>> greet_bob(say_hello)   # note that function is passed without parentheses
'Hello Bob'

>>> greet_bob(be_awesome)
'Bob, you are awesome'

'''

def parent():
    print("I am the parent")

    def first_child():                  # INNER FUNCTION
        print("I am the eldest")        # INNER FUNCTION

    def second_child():                 # INNER FUNCTION
        print("I am the youngest")      # INNER FUNCTION

    second_child()
    first_child()


'''
>>> parent()
'I am the parent'
'I am the youngest'
'I am the eldest'

>>> first_child()
NameError

'''


def children(num):
    def first_child():
        print("I am the eldest")

    def second_child():
        print("I am the youngest")

    if num == 1:
        return first_child
    else:
        return second_child

'''

>>> first = parent(1)
>>> second = parent(2)

>>> first
function object
>>> second
function object

>>> first()
'I am the eldest'
>>> second()
'I am the youngest'

'''



def decorator_func(inner_func):

    def wrapper_func():
        print("Here is a modified inner function")
        return inner_func()

    return wrapper_func  # returns the wrapper func ready to be executed


# initial function
def give_thanks():
    print("thanks")

# assigning extended function to conversation
# conversation = decorator_func(give_thanks)
# conversation()


# instead of all that you can
@decorator_func
def give_thanks():
    print("thanks")

give_thanks()  # this now does the same as 'conversation' function above

# it becomes a sort of sub-function, or an add-on

@decorator_func
def complain():
    print("I was fine the way I was")

complain()



# --- boilerplate for decorators

import functools

def decorator(func):
    @functools.wraps(func)
    def wrapper_decorator(*args, **kwargs):
        # Do something before
        value = func(*args, **kwargs)
        # Do something after
        return value
    return wrapper_decorator

```