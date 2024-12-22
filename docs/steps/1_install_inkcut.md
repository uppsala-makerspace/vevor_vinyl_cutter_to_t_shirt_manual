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

On a Linux computer, start a terminal.

## 1.2 Install the Debian packages

Install the Debian packages:

```bash
sudo apt-get install python3-pip python3-pyqt5 python3-setuptools
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
