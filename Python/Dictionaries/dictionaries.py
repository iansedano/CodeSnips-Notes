def histogram(s):  # counts number of characters
    d = dict()
    for c in s:
        if c not in d:
            d[c] = 1
        else:
            d[c] += 1
    return d


print(histogram('bronto  saurus'))

h = histogram('a')
print(h)

print(h.get('a', 0))  # get ('key', dafalut value)

print(h.get('b', 0))


def print_hist(h):
    for c in h:
        print(c, h[c])


h = histogram('parrot')
print_hist(h)

alphabet = 'aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWXyYzZ'

for l in alphabet:
    if l in h:
        print(l, ':', h[l])


dict_1 = {1: 1, 2: 4}
dict_2 = {3: 9, 4: 16}
dict_3 = {5: 25, 6: 36, 7: 49}

super_dict = {}

for e in dict_1:
    super_dict[e] = dict_1[e]

for e in dict_2:
    super_dict[e] = dict_2[e]

for e in dict_3:
    super_dict[e] = dict_3[e]

print(super_dict)

for e in super_dict:
    print(str(e) + ':' + str(super_dict[e]))


my_string = 'I love to work with dictionaries!'


punctu = '!.,?;:"'

my_dict = {'lower': 0, 'upper': 0, 'punc': 0, 'space': 0}


for c in my_string:

    if c == ' ':
        my_dict['space'] += 1
    elif c in punctu:
        my_dict['punc'] += 1
    elif c == c.upper():
        my_dict['upper'] += 1
    elif c == c.lower():
        my_dict['lower'] += 1


print(my_dict)
