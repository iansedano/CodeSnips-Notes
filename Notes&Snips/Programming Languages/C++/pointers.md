```c++
char c = 'a';
char* pointer = &c;
```

The `*` after the type declaration means that this is going to be a pointer to char.

The `&c` in this case returns the address of the character `c`. It is the address that is assigned to the pointer.

```c++
char c2 = *pointer;
```

The `*` in this case is a _dereference_ operator, which allows the character pointed to by `pointer`, to be assigned to the `char` variable `c2`.