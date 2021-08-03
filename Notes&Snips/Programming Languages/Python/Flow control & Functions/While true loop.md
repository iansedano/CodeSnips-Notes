```python
print('enter the number you would like to submit to the collatz process')

while True: # this means loop forever
    
    number = input()
    try:
        number = int(number)
    except ValueError:
        print('this is not a number')
        continue

    def collatz(number):
        if (number%2) == 0:
            return number // 2
        else:
            return 3 * number + 1

    while number != 1:
        number = collatz(number)
        print(number)
    print('enter the number you would like to submit to the collatz process')  
    

    
    

```