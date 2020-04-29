# Say you have a list value like this:


# spam = ['apples', 'bananas', 'tofu', 'cats']
# Write a function that takes a list value as an argument
# and returns a string with all the items separated by a comma
# and a space, with and inserted before the last item.
# For example, passing the previous spam list to the function
# would return 'apples, bananas, tofu, and cats'.
# But your function should be able to work with any list
# value passed to it.

spam = ['apples','bannanas','tofu','cats']
sculptures = ['during love', 'finding love', 'eternal love', 'love', 'what goes around comes around']

def sayList(someList):
    listLength = len(someList)
    for i in range(listLength-1):
        print(someList[i]+', ',end='')
    print('and '+ someList[listLength-1])

sayList(spam)
