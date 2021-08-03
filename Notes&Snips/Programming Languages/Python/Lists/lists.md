```python

counter = 10
my_list = []

while counter > 0:
    print('type a number')
    my_number = int(input())
    my_list.append(my_number)
    counter = counter - 1

print(my_list)

_sum = 0
for i in my_list:
    _sum = _sum + i

average = len(my_list) / _sum

list_one = [0, 4, 6, 18, 25, 42, 100]
list_two = [1, 4, 9, 24, 42, 88, 99, 100]



def compare_lists(list_x, list_y):
    list_same = []
    list_diff = []
    i = 0
    j = 0
    while i < len(list_x):
        j = 0
        while j < len(list_y):
            if list_x[i] == list_y[j]:
                if list_x[i] not in list_same:
                    list_same.append(list_x[i])
            else:
                if list_x[i] not in list_diff:
                    list_diff.append(list_x[i])
            j += 1
        i += 1
    print(list_same)
    print(list_diff)

compare_lists(list_one, list_two)


def nested_sum(l_of_l):
    all_sum = 0
    for sublist in l_of_l:
        for num in sublist:
            all_sum = all_sum + num
    print(all_sum)


t = [[1, 2], [3], [4, 5, 6]]

nested_sum(t)


def cumsum(_list):
    cum_list = []
    cum_sum = 0
    for _number in _list:
        cum_sum = cum_sum + _number
        cum_list.append(cum_sum)
    print(cum_list)

t = [1, 2, 3]
cumsum(t)

def middle(_list):
    _middle = []
    i = 0
    while i < len(_list):
        if 0 < i < (len(_list) - 1):
            _middle.append(_list[i])
        i += 1
    print(_middle)

t = [1, 2, 3, 4]
middle(t)



import random
random_bdays = []

def sample_b():
    random_bdays = []
    for b in range(0,23):
        random_bdays.append(random.randint(1, 366))
    same_bdays = []
    diff_bdays = []
    for b in random_bdays:
        _count = random_bdays.count(b)
        if _count > 1:
            if b not in same_bdays:
                same_bdays.append(b)
        else:
            if b not in diff_bdays:
                diff_bdays.append(b)
    return(len(same_bdays))

def list_of_prob(sample_size):
    i = sample_size
    _list = []
    while i > 0:
        sample_size = 0
        _sample = 0
        while _sample < 1:
            _sample = sample_b()
            sample_size += 1
        _list.append(_sample / sample_size)
        i -= 1
    return(_list)

def list_avg(list_to_avg):
    _sum = 0
    for i in list_to_avg:
        _sum = _sum + i
    average = len(list_to_avg) / _sum
    return(average)

print(list_avg(list_of_prob(10000)))



```