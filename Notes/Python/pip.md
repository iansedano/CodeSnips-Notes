Little side note for anyone new to Python who didn't figure it out by theirself: this should be automatic when installing Python, but just in case, note that to run Python using the python command in Windows' CMD you must first add it to the PATH environment variable, as explained here.

To execute Pip, first of all make sure you have it. So type in your CMD:

> python
>>> import pip
>>>

And it should proceed with no error. Otherwise, if this fails, you can look here to see how to install it. Now that you are sure you've got Pip, you can run it from CMD with Python using the -m (module) parameter, like this:

> python -m pip <command> <args>

Where <command> is any Pip command you want to run, and <args> are its relative arguments, separated by spaces.

For example, to install a package:

> python -m pip install <package-name>
