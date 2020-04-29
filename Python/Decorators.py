'''

Decorators is a term used to describe a 'level' of a function

A decorator function takes another function and extends
the behavior of it without explicitly modifying it.

'''


def decorator_func(initial_func):
    def wrapper_func():
        print("ive modified the function!")
        return initial_func()
    return wrapper_func  # returns the wrapper func ready to be executed


# instead of this
def give_thanks():
    print("thanks")


conversation = decorator_func(give_thanks)

conversation()

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
