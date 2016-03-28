#! /bin/bash

sudo apt-get install xfs-progs -y 

# This the default list of drives for an AWS EC2 i2.8xlarge instance
# There are 8x 800GB SSD's here
hdd_list="/dev/xvdb /dev/xvdc /dev/xvdd /dev/xvde /dev/xvdf /dev/xvdg /dev/xvdh /dev/xvdi"

# This is the default list of drives for an AWS EC2 i2.4xlarge instance
#hdd_list=""

for i in $hdd_list
do
	sudo fdisk -c -u $i < fdisk.input 
done
