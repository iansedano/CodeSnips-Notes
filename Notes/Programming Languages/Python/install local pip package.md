https://realpython.com/python-import/#create-and-install-a-local-package


setup.cfg

```toml
[metadata]
name = local_package
version = 0.1.0

[options]
packages = package
```

setup.py

```python
import setuptools

setuptools.setup()
```

in outer directory...

then 

```
python -m pip install -e .
```

e means editable


https://realpython.com/pypi-publish-python-package/