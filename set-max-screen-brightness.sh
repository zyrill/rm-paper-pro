#!/bin/sh

tee /etc/systemd/system/tweak-brightness-slider.service > /dev/null 
<<EOF
[Unit]
Description=Set linear_mapping to 'yes' for backlight
After=multi-user.target

[Service]
Type=oneshot
ExecStart=/bin/sh -c 'echo yes > /sys/class/backlight/rm_frontlight/linear_mapping'
ExecStartPost=/bin/sh -c 'cat /sys/class/backlight/rm_frontlight/max_brightness > /sys/class/backlight/rm_frontlight/brightness'

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable --now tweak-brightness-slider.service
