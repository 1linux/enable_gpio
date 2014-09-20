enable_gpio
===========

Quick enabler for GPIO userspace access to any user.

Download "enable_gpio.c" and "make.sh" to any folder on your Linux Box ( I use it on the Raspberry Pi).
Then type "sudo bash make.sh".

This will create the "enable_gpio" executable and save it in /usr/bin, and it will be made SETUID root.
An entry in /etc/rc.local will be made to start it on every boot.

Now every user has access to /sys/class/gpio/export and unexport.

Why to use this? Because it is a pain to run programs as "root", just to have access to GPIO-Ports...
