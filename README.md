### RAID Automator

* Check what is the ideal RAID stripe size for I/O.
* Partition your disks automatically.

#### Usage
* The script has been pre-configured for a AWS EC2 i2.8xlarge instance. Please check your drive names before you run this script.
* sudo ./raid-automator.sh
* sudo blkid /dev/mdo returns the UUID of the disk array.
* Add the fstab contensts with the correct UUID into the /etc/fstab file for auto-mount.
* Auto-mounting is very important on AWS EC2 instances otherwise your instance will not boot after restart. Check this before shutting down your instance.
