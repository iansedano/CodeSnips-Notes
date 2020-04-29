_list = [2,4,6,3542,624,56423,67,4,4,25,346,5,54,745,6562,3456,6,8,90]

_list.sort()
print(_list)

# step size argument?

list_of_tuples = []
counter = 0
_tuple_temp1 = _list[0]
_tuple_temp2 = 0

for x in _list:
    if counter == 0:
        counter += 1

    elif counter == 1:
        _tuple_temp2 = x
        counter += 1

    elif counter == 2:
        _tuple = (_tuple_temp1, _tuple_temp2)
        print(_tuple)
        list_of_tuples.append(_tuple)
        _tuple_temp1 = x
        counter = 1

if len(_list) % 2 != 0:
    _tuple = (_list[len(_list)-2],_list[len(_list)-1])
    list_of_tuples.append(_tuple)

print(list_of_tuples)

##
##

def sumall(*args):
    _sum = 0
    for i in args:
        _sum = _sum + i
    print(_sum)

sumall(324,324,54,356,754,34)
