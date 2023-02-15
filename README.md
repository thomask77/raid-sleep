# Power down and restart RAID disks simultaneously

This script can power down drives that don't work with `hdparm -S` because
they lack power management features (like the popular *WD RED* series).

In addition, all drives are powered up simultaneously when an access
to the RAID array is detected. This makes waking up from standby much
faster, as the drives would normally start up individually.

Tested with:

* `python3` >= 3.9
* `hdparm` >= 9.60

## Install

1. Edit `raid-sleep.conf`:
2. Read(!) and execute `sudo ./install.sh`
  * This will install a `systemd` service to start the program

## Useful commands

Get a tree view of all filesystems and disks:

```bash
lsblk -s -o name,size,type,mountpoints,model,serial
```

List your disk by IDs:

```bash
ls /dev/disk/by-id
```

Watch your disks spinning up and down:

```bash
watch hdparm -C /dev/sd?
```
