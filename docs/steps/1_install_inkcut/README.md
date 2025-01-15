---
tags:
  - install
  - Inkcut
  - software
---

# 1. Install Inkcut

???- question "What are the technical reasons behind this setup?"

    See [my notes](install_inkcut_notes.md) for details.

Inkcut is a program to send things to cut to the vinyl cutter.
It works under Linux, Mac and Windows.
This guide shows how to do this for Linux.

## 1.1 Start a terminal

On a Linux computer, start a terminal:

???- question "How does this look like?"

    ![An Ubuntu dekstop with Firefox](ubuntu_desktop_with_firefox.png)

- Press the Meta/Windows key (between Ctrl and Alt at the bottom
  left of the keyboard)

???- question "How does this look like?"

    ![An Ubuntu dekstop when the meta key is pressed](press_meta_key.png)

- Type terminal

???- question "How does this look like?"

    ![Launching the terminal](press_meta_key_and_type_terminal.png)

Now you have started a terminal

???- question "How does this look like?"

    ![Desktop with a terminal](desktop_with_terminal.png)


## 1.2 Install the Debian packages

Copy-paste the following commands to the terminal:

```bash
sudo apt-get install python3-pip python3-pyqt5 python3-setuptools
```

???- question "How do I paste?"

    Press the right mouse button and click on 'Paste'

    ![Terminal pop-up menu](desktop_with_terminal_and_paste_menu.png)

    Or: use `Ctrl-Shift-V`

???- question "Huh, `Ctrl-V` does not work for pasting?"

    Correct, in a Linux terminal, one needs to use `Ctrl-Shift-V`


???- question "How does that look like?"

    ![First command copy-pasted to the desktop](desktop_with_terminal_and_first_command.png)


```
sudo apt-get install libcups2-dev python3-pyqt5.qtsvg
```

## 1.3 Create a virtual environment for Inkcut

Create a (mandatory!) virtual environment for Inkcut:

```bash
python3 -m venv ~/inkcut_venv
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

???- question "How does that look like?"

    ![inkcut in action](start_inkcut.png)
