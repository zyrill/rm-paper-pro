# rm-paper-pro
Aftermarket tooling for the reMarkable Paper Pro.

This repo will try to build a developer ecosystem around reMarkable Paper Pro (rmPP) - please feel free to contribute, pull, fork, and use.

## Overview
To kick things off, there are two useful scripts:
### entware-install.sh
...which installs the command line package manager [opkg]([https://duckduckgo.com](https://github.com/Entware/Entware/wiki))

### set-max-screen-brightness.sh
...which maximizes the screen brightness to the highest setting the hardware supports

## Installation

1. Switch rmPP to "developer mode" and activate SSH over Wifi
    1. connecting it via USB to a PC
    2. from the home screen, go to Menu->Settings->General->About->Copyrights and Licenses
    3. note down the root password in the second paragraph under "GPLv3 Compliance"
    4. note down the IP address (either IPv6 [XXXX:XXX:XXX:XXXX:XXXX:XXXX:XXXX:XXX] or IPv4 [XXX.XXX.XXX.XXX], e.g. 10.11.99.1)
    5. use SSH to connect to your rmPP, on Windows, you'd e.g. use PuTTY
    6. when connecting to the IP noted above, use username "root" and the password you noted above
    7. once connected, type `rm-ssh-over-wlan on`
2. `init-tooling.sh`
