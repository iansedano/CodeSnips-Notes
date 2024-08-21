```python
from gpiozero import InputDevice
import time

# Specify the pins to read from
pins = [1,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]

# Create an InputDevice for the pins
devices = [InputDevice(pin) for pin in pins]

try:
    while True:
        outputs = [1 if device.is_active else 0 for device in devices]
        print(outputs)
        time.sleep(0.1)
except KeyboardInterrupt:
    pass
```