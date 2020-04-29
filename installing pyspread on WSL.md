installing pyspread on WSL

seems not to work, gives error

```
Traceback (most recent call last):
  File "/usr/bin/pyspread", line 42, in <module>
    from PyQt5.QtCore import Qt, pyqtSignal, QEvent, QTimer, QRect
ImportError: libQt5Core.so.5: cannot open shared object file: No such file or directory
```

possible solution
`sudo strip --remove-section=.note.ABI-tag /usr/lib64/libQt5Core.so.5`

or last time i ran the command
`sudo strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5`