---
tags:
  - setup
  - set up
  - Inkcut
---

# 2. Setup Inkcut

???- question "What are the technical reasons behind this setup?"

    See [Setup Inkcut notes](setup_inkcut_notes.md) for the notes behind this

## 2.1 Start a terminal

On a Linux computer, start a terminal.

## 2.2 Add yourself to the `dialout` group

Add yourself to the `dialout` group:

```bash
sudo usermod -a -G dialout "$USER"
```

## 2.3 Reboot the computer

Reboot the computer.

???- question "Can I just log out and log in?"

    No.

    This does not work.
