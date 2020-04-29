'''
*args stands for argurmnets
**kwargs stand for keyword arguments

prefixing arguments with *s allow for passing arbitrary amount of arguments

*
means you can pass arguments as list

'''


def print_list(*list):
    for i in list:
        print(i)


my_list = [1, 2, 3, 4, "hello"]
print_list(my_list)

'''
**
means arguments are passed as KEYWORD ARGUMENTS
similar to a dictionary

'''


def print_kwargs(**kwargs):
    for keyword, arg in kwargs.items():
        print(keyword, arg)


print_kwargs(efas="sad", asd="ahppy", fdsf="asdas")

my_dict = {"ian": "cool", "dogs": "the best", "music": "the fabric of reality"}

print_kwargs(**my_dict)
