#!/bin/bash

# Check if we are root privilage or not

# Which files are we going to back up. Please make sure to exist /home/ec2-user/data file

# Where do we backup to. Please crete this file before execute this script

# Create archive filename based on time

# Print start status message.

# Backup the files using tar.

# Print end status message.

# Long listing of files in $dest to check file sizes.

tar -cvzf /mnt/backup/data-$(date '+%Y-%R-%M'-$(hostname)).tgz /home/ec2-user/data

tar -cvzf /mnt/backup/etc-$(date '+%Y-%R-%M'-$(hostname)).tgz /home/ec2-user/etc

tar -cvzf /mnt/backup/boot-$(date '+%Y-%R-%M'-$(hostname)).tgz /home/ec2-user/boot

tar -cvzf /mnt/backup/usr-$(date '+%Y-%R-%M'-$(hostname)).tgz /home/ec2-user/usr

