#!/bin/bash

echo "Welcome $USER on $HOSTNAME"
echo "###############################"

FREE_RAM=`free -m | grep Mem | awk '{print $4}'`
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sdal' | awk '{print $4}')

echo "###############################"
echo "Avaliable Ram is $FREE_RAM mb"
echo "###############################"
echo "Current Load Average is: $LOAD"
echo "###############################"
echo "Free root partition size $ROOTFREE"
