Check Drivers: Run lsusb to identify your mouse and check if drivers are available.

Logs: Run `dmesg | grep -i`` mouse to check for any error messages related to the mouse.

xinput: Use `xinput list`` to identify the device, and then `xinput test [device id]`` to test its functionality.

Use `evtest`