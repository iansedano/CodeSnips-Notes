```python
# aggregators


def add_vars(x, y, z):
    return x + y + x


courses = ['Intro', 'Intermediate', 'Advanced', 'Epic Hero']

for i, c in enumerate(courses):  # i is index, c is courses
    print(f"{i}: {c} python")

# equivalent to

for i in range(len(courses)):
    print(f"{i}: {courses[i]} python")


# enumerate function - returns list of tuples
l1 = ["eat", "sleep", "repeat"]
s1 = "geek"

print(list
      (enumerate
       (l1)
       )
      )

```