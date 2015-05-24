#!/bin/sh

cp raid-sleep /usr/local/sbin
cp raid-sleep.service /etc/systemd/system

cp --backup --interactive raid-sleep.conf /etc/raid-sleep.conf

systemctl daemon-reload
systemctl enable raid-sleep
systemctl restart raid-sleep
systemctl status raid-sleep
