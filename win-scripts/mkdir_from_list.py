import os

print(os.getcwd())
mypath = ""


list_of_folders_to_make = []

for i in list_of_folders_to_make:
    os.mkdir(os.path.join(mypath, i))
