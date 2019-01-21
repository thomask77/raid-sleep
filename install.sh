#!/bin/bash
set -o nounset -o pipefail -o errexit

install -m 755 -v raid-sleep /usr/local/sbin
install -m 644 -v raid-sleep.service /etc/systemd/system

test -f /etc/raid-sleep.conf || install -m 644 -v raid-sleep.conf /etc/raid-sleep.conf

systemctl daemon-reload
systemctl enable raid-sleep.service
systemctl restart raid-sleep.service
systemctl status raid-sleep.service --no-pager -l
