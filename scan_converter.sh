#!/bin/bash
convert '/home/pi/tmpscanfolder/scan_'$1'.pnm' -normalize -level 10%,90% '/home/pi/tmpscanfolder/scan_'$1'.pdf'
gs \
 -o '/home/pi/tmpscanfolder/scan_'$1'_2.pdf' \
 -sDEVICE=pdfwrite \
 -sPAPERSIZE=a4 \
 -dFIXEDMEDIA \
 -dPDFFitPage \
 -dCompatibilityLevel=1.4 \
 '/home/pi/tmpscanfolder/scan_'$1'.pdf'

cp '/home/pi/tmpscanfolder/scan_'$1'_2.pdf' '/home/pi/scanfolder/scan_'$1'.pdf'
sudo chmod -R 777 /home/pi/scanfolder
rm '/home/pi/tmpscanfolder/scan_'$1'.pnm'
rm '/home/pi/tmpscanfolder/scan_'$1'.pdf'
rm '/home/pi/tmpscanfolder/scan_'$1'_2.pdf'




