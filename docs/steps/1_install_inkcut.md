## 1. Install Inkcut

<!-- See install_inkcut_notes.md for the notes behind this -->

Inkcut is a program to send things to cut to the vinyl cutter.
It works under Linux, Mac and Windows.
This guide shows how to do this for Linux.

Install the Debian packages:

```bash
sudo apt-get install python3-pip python3-pyqt5 python3-setuptools
sudo apt-get install libcups2-dev python3-pyqt5.qtsvg
```

Create a (mandatory!) virtual environment for Inkcut:

```bash
python3 -m venv ~/inkcut_venv
```

Install the Inkcut and PyQt5 Python packages in the virtual environment"

```bash
~/inkcut_venv/bin/pip install inkcut PyQt5
```

Now you can start `inkcut` with:

```bash
~/inkcut_venv/bin/inkcut 
```

![inkcut in action](start_inkcut.png)

\pagebreak
