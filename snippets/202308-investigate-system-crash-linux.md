```
journalctl --since "2023-07-30 14:00:00" --until "2023-07-30 16:00:00"
```

If need to recover frozen system, try Ctrl + Alt + F[1-7] to switch to a different tty, `pkill -HUP -x xfce4-session` or the relevant process, and then Ctrl + Alt + F1 to switch back to the first tty.