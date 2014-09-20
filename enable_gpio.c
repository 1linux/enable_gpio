/*
# enable_gpio - SETUID-program to enable GPIO for any user
# 2014 Helmut Gruber, EBCOM.de
# Released under the MIT licence.

# Please use the accompanied "sudo make.sh" to install it.
*/

#include <sys/stat.h>

void main(void) {
    /* Write-Access for anyone */
    chmod("/sys/class/gpio/export", S_IWUSR|S_IWGRP|S_IWOTH);
    chmod("/sys/class/gpio/unexport", S_IWUSR|S_IWGRP|S_IWOTH);
}
