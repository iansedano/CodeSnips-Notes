https://wiki.archlinux.org/title/Keyboard_input#Configuration_of_VIA_compatible_keyboards

Add the udev rule

Will probably need a restart or:

sudo udevadm control --reload
or
sudo udevadm trigger

This can pose a security risk so probably best to undo this once done configuration

For linux connection:

https://forum.manjaro.org/t/bluetooth-keyboard-keeps-connecting-and-disconnecting-after-rebooting/107772/3

It seems that Keychron firmware needs to have very specific sequence of actions in order for bluetooth to work. This is how it should be in the exact order:

1. Remove the keyboard from known bluetooth devices if it’s there.
2. Hold Fn+[1-3] to start pairing with the keyboard
3. In blueman-manager press “Search” (or type scan on in bluetoothctl)
4. DO NOT CONNECT THE DEVICE, pair it instead. Right click on device in blueman-manager and select “Pair” (or type pair <mac> in bluetoothctl)
5. Pairing takes a couple of seconds after which keyboard disconnects. Wait until it fully disconnects
6. Now, connect the keyboard. Double click it in blueman-manager (or connect <mac> in bluetoothctl)
7. After keyboard is connected, make it “trusted”. Right click the device in blueman-manager and select “Trusted” (or trust <mac> in bluetoothctl)

So if MAC is 6C:93:08:63:4D:6D

```
$ bluetoothctl
[bluetooth]# scan on
[bluetooth]# pair 6C:93:08:63:4D:6D
[bluetooth]# connect 6C:93:08:63:4D:6D
[bluetooth]# trust 6C:93:08:63:4D:6D
```

---

If get disconnected and won't connect again, then:

```
$ bluetoothctl
[bluetooth]# disconnect 6C:93:08:63:4D:6D
[bluetooth]# untrust 6C:93:08:63:4D:6D
[bluetooth]# remove 6C:93:08:63:4D:6D
```