# This gives an error

#def spam():
#    eggs = 31337
#spam()
#print(eggs)


# This shows how both definitions seem to ignore eachother

def spam():
    eggs=99
    bacon()
    print(eggs)

def bacon():
    ham = 101
    eggs = 0

spam()



# bad habit but this shows how you can use local and global variables
# with same name but can be done

def spam():
    eggs = 'spam local'
    print(eggs) #prints 'spam local'
def bacon():
    eggs = 'bacon local'
    print(eggs) #prints bacon local
    spam()
    print(eggs) #prints bacon local
eggs = 'global'
bacon()
print(eggs) #prints global
