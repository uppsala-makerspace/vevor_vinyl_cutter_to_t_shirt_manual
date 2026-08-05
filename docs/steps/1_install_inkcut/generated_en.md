
# 1. Install Inkcut

In this step of
[this vinyl cutter to T-shirt manual](https://richelbilderbeek.github.io/vevor_vinyl_cutter_to_t_shirt_manual/),
we install Inkcut.


If you cannot use the Inkcut laptop that is usually
in the vinyl cutter, you will need to Inkcut
on the computer you use.

Inkcut is a program to send things to cut to the vinyl cutter.
It works under Linux, Mac and Windows.
This guide shows how to do this for Linux.

If you could provide these instructions for Mac or Windows,
please [contribute](../../CONTRIBUTING.md)!

## 1.1 Start a terminal

On a Linux computer, start a terminal:


- Press the Meta/Windows key (between Ctrl and Alt at the bottom
  left of the keyboard)


- Type `terminal`


Now you have started a terminal


## 1.2 Install the Debian packages

Copy-paste the following command to the terminal:

```bash
sudo apt-get install python3-pip python3-pyqt5 python3-setuptools
```


Probably you will need to type a password and press enter.


You will probably be asked if you want to install these programs.
Type 'Y' and press enter.

You will see a lot of programs being installed.


Well done!


Now repeat with this command:

```bash
sudo apt-get install libcups2-dev python3-pyqt5.qtsvg
```


## 1.3 Create a virtual environment for Inkcut

Create a (mandatory!) virtual environment for Inkcut:

```bash
python3 -m venv ~/inkcut_venv
```

If you get the error 'The virtual environment was not created successfully',
try:

```bash
sudo apt install python3.12-venv
```


## 1.4 Install Python packages in the virtual environment

Install the Inkcut and PyQt5 Python packages in the virtual environment"

```bash
~/inkcut_venv/bin/pip install inkcut PyQt5
```


## 1.5 Start Inkcut

Now you can start `inkcut` with:

```bash
~/inkcut_venv/bin/inkcut 
```


Inkcut is now started. Well done!
