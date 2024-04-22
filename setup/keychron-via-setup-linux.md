https://wiki.archlinux.org/title/Keyboard_input#Configuration_of_VIA_compatible_keyboards

Add the udev rule

Will probably need a restart or:

sudo udevadm control --reload
or
sudo udevadm trigger

This can pose a security risk so probably best to undo this once done configuration
