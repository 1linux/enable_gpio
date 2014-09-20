#!/bin/bash

# Enable userspace gpio for all users. Considerably safe on Raspberry Pi,
# as there is probably only one user playing with it :-)
# (c) 2014 Helmut Gruber, EBCOM.de

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   echo "Try: sudo bash make.sh" 1>&2
   exit 1
fi

# Compile our litte program:
gcc enable_gpio.c -o/usr/bin/enable_gpio

# Make it suid, so everyone (aka "pi") can use it at any time
chmod u+s /usr/bin/enable_gpio

# Access rights are set on every reboot, so make it run automatically on boot:^
echo "/usr/bin/enable_gpio" >>/etc/rc.local

# Finally, run it now:
/usr/bin/enable_gpio

echo "enable_gpio is installed now."
echo "To remove, edit /etc/rc.local and reboot."
