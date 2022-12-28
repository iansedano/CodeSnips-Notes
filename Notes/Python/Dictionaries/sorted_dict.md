```python


my_dict = {1: 2, 3: 4, 4: 3, 2: 1, 0: 0}
sorted_dict = {k: v for k, v in sorted(my_dict.items(), key=lambda item: item[1])}

```