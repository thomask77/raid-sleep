#!/bin/bash
set -o nounset -o pipefail -o errexit

cp raid-sleep /usr/local/sbin
cp raid-sleep.service /etc/systemd/system

cp --backup --interactive raid-sleep.conf /etc/raid-sleep.conf

systemctl daemon-reload
systemctl enable raid-sleep
systemctl restart raid-sleep
systemctl status raid-sleep -l
