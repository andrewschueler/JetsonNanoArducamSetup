#!/bin/bash

# This installation refers to MIPI cameras, and those require a different library and software interface.
# Here are the driver installation instructions
# https://www.arducam.com/docs/camera-for-jetson-nano/mipi-camera-modules-for-jetson-nano/driver-installation/

# Go to the root dir of the user
cd ~/
# First, git clone a bunch of stuff
git clone https://github.com/ArduCAM/MIPI_Camera.git
# Then you install the correct version according to the instructions...
# sudo dpkg -i arducam-nvidia-l4t-kernel_4.9.140

# Here is what I have currently done so far
cd ~/MIPI_Camera/Jetson/Jetvariety/driver
# kernel and version output
# ~/MIPI_Camera/Jetson/Jetvariety/driver$ uname -a
# Linux moduletwo-desktop 4.9.140-tegra #1 SMP PREEMPT Wed Apr 8 18:10:49 PDT 2020 aarch64 aarch64 aarch64 GNU/Linux
# ~/MIPI_Camera/Jetson/Jetvariety/driver$ cat /etc/nv_tegra_release 
# R32 (release), REVISION: 4.2, GCID: 20074772, BOARD: t210ref, EABI: aarch64, DATE: Thu Apr  9 01:22:12 UTC 2020
# I did not know which versionto run, so I just ran what appeared to be the latest driver.
sudo dpkg -i arducam-nvidia-l4t-kernel_4.9.140-32.4.2-20200520093606_arm64.deb
# Then I ran more installs
sudo apt install v4l-utils
sudo apt-get -y install python3-pip
pip3 install v4l2
# I have to reboot now, installed too much new stuff
sudo reboot now
# This is where I am now, and it is still not working.
```bash
~/MIPI_Camera/Jetson/Jetvariety/example$ python3 arducam_displayer.py 
Traceback (most recent call last):
  File "arducam_displayer.py", line 8, in <module>
    from utils import ArducamUtils
  File "/home/moduletwo/MIPI_Camera/Jetson/Jetvariety/example/utils.py", line 1, in <module>
    import v4l2
  File "/home/moduletwo/.local/lib/python3.6/site-packages/v4l2.py", line 197, in <module>
    ) = range(1, 9) + [0x80]
TypeError: unsupported operand type(s) for +: 'range' and 'list'
```

