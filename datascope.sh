#! /bin/bash

hdd="/dev/sdw /dev/sdu"
hdd1="/dev/sdd /dev/sdn /dev/sdc /dev/sdf /dev/sdl /dev/sde /dev/sdi /dev/sdm /dev/sdh /dev/sdk /dev/sdg /dev/sdj"
hdd2="/dev/sds /dev/sdq /dev/sdv /dev/sdu /dev/sdw /dev/sdr /dev/sdt /dev/sdp /dev/sdy /dev/sdaa /dev/sdz /dev/sdx"
sdd1="/dev/sdb /dev/sdo"


echo "Hello"

for i in $hdd1
do
	sudo fdisk -c -u $i < fdisk.input 
done

for i in $hdd2
do
	sudo fdisk -c -u $i < fdisk.input
done
