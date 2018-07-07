# Power down RAID disks after a specified timeout

This script can handle drives that don't work with `hdparm -S` because
they lack power management features (like the popular *WD RED* series).

Also, all drives are powered up at the same time when an access to
one of the drives is detected. This makes wake-up from standby a lot
faster for RAID arrays, where the drives would wake up in sequence
with normal `hdparm` power-down.

## Requirements

* Tested on Debian 8.11 (jessie): 
  * `python3` >= 3.4.2
  * `hdparm` >= 9.43

## Install

1. Edit `raid-sleep.conf`:
    * Use `find /dev/disk/by-id` and `blkid` to find out your disk IDs
2. Read(!) and Execute `sudo ./install.sh`
    * This will set up a `systemd` service to start the program
