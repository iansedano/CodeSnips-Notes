

stuff = {'rope': 1, 'torch': 6, 'gold coin': 42, 'dagger': 1, 'arrow': 12}



def displayInventory(inventory):
    totalItems = 0
    print('')
    print('You look in your rucksack and find the following goods:')
    print('')
    for k, v in inventory.items():
        print(str(v) + ' ' + k)
        totalItems = totalItems + v
    print('You have '+ str(totalItems) + ' item', end = '')
    if totalItems > 1:
        print("s")
    print('')
        


