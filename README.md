# rm-paper-pro
Aftermarket tooling for the reMarkable Paper Pro.

This repo will try to build a developer ecosystem around reMarkable Paper Pro (rmPP) - please feel free to contribute, pull, fork, and use.

## Links
### rmBifrost: development framework that enables homebrew applications
https://github.com/shg8/rmBifrost

### XOVI extensions for the Remarkable Paper Pro
https://github.com/asivery/remarkable-xovi-extensions

### entware-install.sh
...which installs the command line package manager [opkg]([https://duckduckgo.com](https://github.com/Entware/Entware/wiki))

### set-max-screen-brightness.sh
...which maximizes the screen brightness to the highest setting the hardware supports

## Installation of the scripts (entware & screen brightness):

1. Switch rmPP to "developer mode"
   1. from the home screen, tap men->Settings->General->Software, tap your software version
   3. Tap Advanced->Developer mode->Accept
   4. Enter your passcode
   5. Tap Continue to start factory reset and enter developer mode
   6. Your paper tablet will restart. Afterwards, it will be in developer mode. Tap Next.
2. Activate SSH over Wifi
    1. connect rmPP via USB to a PC
    2. from the home screen, tap Menu->Settings->General->About->Copyrights and Licenses
    3. note down the root password in the second paragraph under "GPLv3 Compliance"
    4. note down the IP address (either IPv6 [XXXX:XXX:XXX:XXXX:XXXX:XXXX:XXXX:XXX] or IPv4 [XXX.XXX.XXX.XXX], e.g. 10.11.99.1)
    5. use SSH to connect to your rmPP, on Windows, you'd e.g. use PuTTY
    6. when connecting to the IP noted above, use username "root" and the password you noted above
    7. once connected, type `rm-ssh-over-wlan on`
3. You should now be able to connect to rmPP using Wifi and SSH, nota bene: use the Wifi IP, not the USB IP
4. Open SSH to rmPP and enter `wget -q -O- http://raw.githubusercontent.com/zyrill/rm-paper-pro/refs/heads/main/bootstrap.sh 2>/dev/null | /bin/sh`
5. Type `opkg list` to check whether opkg works and to see a list of installable packages
