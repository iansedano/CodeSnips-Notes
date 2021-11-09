### Modules

Module usually means one `.py` file.

The module also acts as a namespace. A namespace is just the name before the dot.


### Packages

Module which can contain modules or packages

Technically it has a __path__ attribute

A package is still a module

To create a package, make a file named `__init__.py` - this file contains the contents of the package when its treated like a module but can be left empty.



The file you run is always considered the root folder...

```
python -m tests.test
```