```python

print('choose a number')
usr_num = input()
is_int = False

while is_int == False:
    try:
        int(usr_num)
        is_int = True
    except:
        print("try again")
        usr_num = input()

print('you have chosen a number')




```