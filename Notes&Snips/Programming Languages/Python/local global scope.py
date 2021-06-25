def spam():
    global eggs
    eggs = 'spam' # this is setting global variable

def bacon():
    eggs = 'bacon' # this is a local variable
    print(eggs)


def ham():
    print(eggs) # this prints global

eggs = 42  # this sets global

spam() # this sets global again

print(eggs)


###

