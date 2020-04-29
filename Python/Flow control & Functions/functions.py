def hello():
    print('Howdy!')
    print('Howdy!!!')
    print('Hello there.')
hello()
hello()
hello()

def hello(name):
        print('hello '+name)

hello('alice')
hello('bob')


import random
def getAnswer(answerNumber):
    if answerNumber == 1:
        return 'It is certain'
    elif answerNumber == 2:
        return 'It is decidedly so'
    elif answerNumber == 3:
        return 'Yes'
    elif answerNumber == 4:
        return 'Reply hazy try again'
    elif answerNumber == 5:
        return 'Ask again later'
    elif answerNumber == 6:
        return 'Concentrate and ask again'
    elif answerNumber == 7:
        return 'My reply is no'
    elif answerNumber == 8:
        return 'Outlook not so good'
    elif answerNumber == 9:
        return 'Very doubtful'

#r = random.randint(1, 9)   these 3 lines can be simplified below
#fortune = getAnswer(r)
#print(fortune)

print(getAnswer(random.randint(1, 9)))


print ('hello')
print ('world')

print ('hello', end='')
print ('world')

print ('hello', 'world', 'im', 'leaving')
