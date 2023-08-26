#!/usr/bin/python3

import os
from hashlib import md5

code = os.popen('echo "" | rofi -dmenu -p "Code" -theme /home/sawntoe/.config/i3/rofi/themes/rcode.rasi').read()
print(code)
