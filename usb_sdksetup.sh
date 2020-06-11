#!/bin/bash

# Go to the root dir of the user
cd ~/
# First, git clone a bunch of stuff
git clone https://github.com/ArduCAM/arducam_config_parser
git clone https://github.com/ArduCAM/ArduCAM_USB_Camera_Shield
# Then, we need to install the configuration parser library. It contains the logic to actually receive frames.
# First, we have to go there
cd arducam_config_parser
# Then we can compile the code
make clean && make
# Then we install it
make install
# After that, the system should be ready to go!
