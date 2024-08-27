```python
_file = open('words.txt', 'r')

# print(_file.read())
# print(repr(_file.read(100)))

for line in _file:
    if len(line) > 20:
        print(line, end='')

_file.close()


'''Write a function called sed that takes as arguments a pattern string,
a replacement string, and two filenames; it should read the first file
and write the contents into the second file (creating it if necessary).
If the pattern string appears anywhere in the file, it should be
replaced with the replacement string.'''


def sed(pat, rep, path1, path2):

    # initial definitions
    pos = 0
    list_pos = []

    file1 = open(path1, 'r', encoding="utf8")
    file2 = open(path2, 'w')

    file_string = file1.read()

    # making list of positions of the target pattern
    while file_string.find(pat, pos) != -1:

        start = file_string.find(pat, pos)
        end = start + len(pat)

        list_pos.append(start)
        pos = end
    print(list_pos)

    # writing the string
    string_to_write = ''  # string to be
    tracker = 0

    for target in list_pos:
        string_to_write = string_to_write + file_string[tracker:target] + rep
        tracker = target + len(pat)
        print(tracker, end=' ')

    # writing the last part of the string

    string_to_write = string_to_write + file_string[tracker:]
    file2.write(string_to_write)

    # FIN
    file1.close()
    file2.close()


sed('Raven', '____RAVEN____', 'the_raven.txt', 'the_raven_mod.txt')


'''
'''

import os

# initializing
list_of_paths = []

os.chdir('C:\\Dropbox\\0 Library')
files_md5 = {}

# making list of paths
for root, dirs, files in os.walk("."):
    print(root)
    for filename in files:
        full_path = 'C:\\Dropbox\\0 Library' + root[1:] + '/' + filename
        list_of_paths.append(full_path)
print(list_of_paths)


# making dictionary of {(paths: md5)}
for file in list_of_paths[0:300]:
    cmd = 'md5sum ' + "'" + file + "'"
    fp = os.popen(cmd)
    res = fp.read()
    files_md5[file] = res[0:32]
    stat = fp.close()

# initializing
duplicates = {}
uniques = {}
md5s = []
files = []

# making list of md5 hash and corresponding list of files
# (with corresponding indexes)
for x in files_md5:
    md5s.append(files_md5[x])
    files.append(x)

# printing
print(md5s)
print('list of paths -' + str(len(list_of_paths)))
print('dict -' + str(len(files_md5)))

print('md5s -' + str(len(md5s)))
print('files -' + str(len(files)))

# making list of duplicates
counter = 0
duplicates = []  # initializing dup list
for _hash in md5s:
    for each in md5s:  # for loop withing for loop looping same list
        if _hash == each:
            counter += 1  # if it finds a duplicate it makes counter > 1
    if counter > 1:  # and if counter > 1 there is dup so adds to list
        if _hash not in duplicates:
            duplicates.append(_hash)
    counter = 0             # resetting counter after each
print('duplicates - ' + str(len(duplicates)))
print(duplicates)

# printing list of duplicates
for dup in duplicates:
    print(files[md5s.index(dup)])

```