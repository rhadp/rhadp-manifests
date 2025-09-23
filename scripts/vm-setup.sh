#!/bin/bash

MOUNT_POINT="/mnt/data"
ADDITIONAL_DISK=$(lsblk -rno NAME,TYPE | grep part | awk 'NR==2 {print $1}')

sudo mkfs.ext4 "/dev/$ADDITIONAL_DISK"

sudo mkdir -p "$MOUNT_POINT"
sudo mount "/dev/$ADDITIONAL_DISK" "$MOUNT_POINT"

sudo chmod 755 "$MOUNT_POINT"

DEVICE_UUID=$(sudo blkid -s UUID -o value "/dev/$ADDITIONAL_DISK")
echo "UUID=$DEVICE_UUID $MOUNT_POINT ext4 defaults 0 2" | sudo tee -a /etc/fstab

echo "VM startup script running at $(date)" >> /mnt/data/vm-startup.log