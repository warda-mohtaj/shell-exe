#!/bin/bash


d=$(date "+%d-%m-%Y-%H:%M")

log=number_connection-$d
mkdir -p /home/warda/Documents/script/job8/Backup
sudo grep -a  warda /var/log/auth.log | wc -l |gzip > /home/warda/Documents/script/job8/Backup/backup_$log.gz

