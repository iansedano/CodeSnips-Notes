import sys

link = sys.argv[1]
last_item = link.split("/")[-1].strip().strip("#").replace("-", " ")

print(last_item)
