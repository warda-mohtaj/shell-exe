#!/bin/bash

d=date '+%d-%m-%Y-%H:%M'

log=number_connection-$d
mkdir -p /home/warda/Documents/Script/job8/Backup
grep -a  warda /var/log/autho.log | wc -l |gzip > 
/home/warda/Documents/Script/job8/Backup/backup_$log.gz
