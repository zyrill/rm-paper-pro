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
  a. connecting it via USB to a PC
  b. from the home screen, go to Menu->Settings->General->About->Copyrights and Licenses
  c. note down the root password in the second paragraph under "GPLv3 Compliance"
  d. note down the IP address (either IPv6 [XXXX:XXX:XXX:XXXX:XXXX:XXXX:XXXX:XXX] or IPv4 [XXX.XXX.XXX.XXX], e.g. 10.11.99.1)
  e. use SSH to connect to your rmPP, on Windows, you'd e.g. use PuTTY
  f. when connecting to the IP noted above, use username "root" and the password you noted above
  g. once connected, type `rm-ssh-over-wlan on`
2. init-tooling.sh
