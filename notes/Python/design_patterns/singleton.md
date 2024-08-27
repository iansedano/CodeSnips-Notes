```python
class SingletonObject(object):
    """
    Class that ensures only one instance of it runs even
    though it may be called from various locations.

    It is a class that checks if there is an instance
    then builds an internal class.
    """

    class __SingletonObject():
        def __init__(self):
            self.val = None

        def __str__(self):
            return(f"{self!r} {self.val}")

        # Rest of class definition here.
        # .
        # .
        # .

    instance = None

    def __new__(cls):
        """ Checks instantiation of object """
        if not SingletonObject.instance:
            SingletonObject.instance = SingletonObject.__SingletonObject()

        return SingletonObject.instance

    def __getattr__(self, name):
        return getattr(self.instance, name)

    def __setattr__(self, name):
        return setattr(self.instance, name)

```