---
tags:
  - setup
  - set up
  - Inkcut
  - connection
---

# 8. Set up Inkcut connection

In Inkcut, go to the 'Configure device | Connection':

- Type: Serial port
- Port: `ttyUSB0`. If you cannot select `ttyUSB0`, you've used the wrong USB cable
  coming out of the vinyl cutter :-)
- Baudrate: 38400

???- question "Why do you use the serial port?"

    Because it was the first one that worked for me.

    Please [contribute](../CONTRIBUTING.md) if you want to
    document how to connect a laptop to the vinyl cutter
    using a parallel connection.

![Use the serial port with a baudrate of 38400](set_baudrate_to_38400.png)

> Use the serial port with a baudrate of 38400.
> If you cannot select `ttyUSB0`, you've used the wrong USB cable
> coming out of the vinyl cutter
