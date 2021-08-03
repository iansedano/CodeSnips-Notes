```python
string = '  hakunah matata  '

strip_string = string.strip()
print(strip_string)

rep_string = string.replace('k', 'kk')
print(rep_string)

find_string = string.find('t',5,15)
print(find_string)


word = 'banana'
print(word.count('a',0,7))


def first(word):
    return word[0:1:]

print(first('weaosj'))



def is_palindrome(word):
    if word != word[::-1]:
        return False
    return True

print(is_palindrome('hannah'))


string = 'qwerty'

vowels = 'aeiou'

def find_vowel(word):
    i = 0
    j = 0
    while i < len(word):
        j = 0
        while j < len(vowels):
            if word[i] == vowels[j]:
                return i
            j += 1
        i += 1


print(find_vowel(string))


print('type something')
my_string = input()
print(my_string.upper())
print(my_string.lower())


def is_vowel(letter):
    vowels = 'aeiou'
    i = 0
    while i < len(vowels):
        if letter == vowels[i]:
            return True
        i += 1
    return False

j = 0
while j < len(my_string):
    if is_vowel(my_string[j]):
        print(my_string[j].lower(), end = '')
    else:
        print(my_string[j].upper(), end = '')
    j += 1



def count(word,letter):
    count = 0
    for letter in word:
        if letter == 'letter':
            count = count + 1
    print(count)

def countx(word,letter):
    pos = 0
    count = 0
    while pos < len(word):
        pos = word.find(letter,pos)
        count += 1
        print(count)

print(countx('wawa','w'))




```