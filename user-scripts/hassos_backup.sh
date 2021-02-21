#!/bin/bash
# Copyright (C) 2021 Dustin Schreier


# ----- Edit this area -----
VMNAME="HassOS"
VDISK="hassos.qcow2"
DIR="/mnt/user/system/domains/HassOS"
BACKUPFILE="HassOS_Backup.zip"


# ----- Do not touch! -----
virsh shutdown $VMNAME
rm $DIR/$BACKUPFILE
rm $DIR/tmp -r
mkdir $DIR/tmp
cp $DIR/$VDISK $DIR/tmp/$VDISK
virsh start $VMNAME
/usr/local/emhttp/webGui/scripts/notify -e "Unraid Server Notice" -s "HassOS" -d "VM started!" -i "normal"
zip $DIR/$BACKUPFILE $DIR/tmp/$VDISK 
/usr/local/emhttp/webGui/scripts/notify -e "Unraid Server Notice" -s "HassOS" -d "Backup finished!" -i "normal"
rm $DIR/tmp -r
