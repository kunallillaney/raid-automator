### RAID Automator

* Check what is the ideal RAID stripe size for I/O.
* Partition your disks automatically.

#### Usage
* The script has been pre-configured for a AWS EC2 i2.8xlarge instance. Please check your drive names before you run this script.
* sudo ./raid-automator.sh
* You can setup the disk to be auto-mounted by using the following steps
  * sudo blkid /dev/mdo returns the UUID of the disk array.
  * Add the fstab contensts with the correct UUID into the /etc/fstab file for auto-mount.

* Auto-mounting is very tricky on AWS EC2 instances. It works if you only want to reboot your instances. **Do not** use this if you want to stop your instance because it will not boot after start. Check this before stopping your instance.
