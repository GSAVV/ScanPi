#!/bin/bash
stamp=$(date +"%Y%m%d_%H%M%S")
sudo scanimage --resolution 300 -x 210 -y 297 --custom-gamma=auto -d pixma:MP620_192.168.178.28 > '/home/pi/tmpscanfolder/scan_'${stamp}'.pnm'
sudo /root/scripts/scan_converter.sh ${stamp} &





