#! /bin/bash

sudo apt-get install xfsprogs -y 

# This the default list of drives for an AWS EC2 i2.8xlarge instance
# There are 8x 800GB SSD's here
hdd_list="/dev/xvdb /dev/xvdc /dev/xvdd /dev/xvde /dev/xvdf /dev/xvdg /dev/xvdh /dev/xvdi"

# This is the default list of drives for an AWS EC2 i2.4xlarge instance
#hdd_list=""

# Iterating over the disk list to partition them
for i in $hdd_list
do
	sudo fdisk -c -u $i < fdisk.input 
done

# Creating the software RAID
sudo mdadm -C /dev/md0 -v -l 0 -n 8 /dev/xvdb1 /dev/xvdc1 /dev/xvdd1 /dev/xvde1 /dev/xvdf1 /dev/xvdg1 /dev/xvdh1 /dev/xvdi1

# Creating an xfs file-system
sudo mkfs.xfs /dev/md0

# Creating the directory /data
sudo mkdir /data/

# Mounting /dev/md0
sudo mount /dev/md0 /data/

# Creating the cache directory
sudo mkdir /data/cache/
sudo chown -R www-data:www-data /data/cache/
