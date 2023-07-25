Fedora 37 waking up immediately from suspend mode. Swap partition was big enough for more than double RAM.

Check system logs:

```bash
journalctl -b -g 'suspend|wake'
```

Checked which devices are enabled to wake system from suspend with:

```bash
cat /proc/acpi/wakeup
```

This should show several devices (PEG1, PEG0, RP05, RP07, PXSX, XHCI, AWAC) that are enabled and potentially causing the wake-up.

On the Riera desktop, it was XHCI (usb).

These entries represent different system components you can disable them to isolate the problematic devices. For example:

```bash
echo "XHCI" | sudo tee /proc/acpi/wakeup
```

This command toggles whether usb devices can wakeup the system. Using the `tee` command, which helps write to a file with root privileges by working around the restriction that prevents `sudo` from working with redirection (`>`).

Disabling devices in this way is typically safe and the changes are not permanent. The changes will be lost after a reboot. To make the changes permanent, you can create a systemd service that runs at boot time to disable the devices.

To create the service see [[create-systemd-service]]

To go further and identify the exact USB device that is causing the wake-up, you can look at system logs:

```bash
dmesg | grep -i 'usb'
```

Then cross-reference the product and vendor IDs from these logs with the output of:

```bash
lsusb
```

If the device is not intended to wake your system, you can control this by writing a 'disabled' attribute to the device's power/wakeup file:

```bash
echo 'disabled' | sudo tee /sys/bus/usb/devices/usbX/power/wakeup
```

where `usbX` is the USB bus the device is connected to. BIOS/UEFI settings may also allow configuration of what devices can wake up the machine.

By following these steps, you should be able to prevent your Fedora 37 desktop from waking up immediately after entering suspend mode.