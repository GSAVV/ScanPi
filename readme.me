# ScanPi

## Introduction

I have an old Canon Pixma MP620(B) which had not the best driver support for the included scanner unit. Because my printer is set up as a network printer, scanning using an USB cable was just not an option. Luckily, I noticed that scanning over LAN is supported by Linux and I realized a dedicaded scanner button on an old Raspberry Pi.

So this documentation will be far from complete, because I implemented this way before I used git. So naturally, over 1 year later, I cannot remember the steps I took. Also, my printer died a month ago and I just wanted to upload my code to github, which would allow me to reconstruct some parts if necessary for similar projects.

## Scanning Process and Usage

The Raspberry is connected via Ethernet to the home network. I prefer to give fixed IP addresses. I also noticed, that on Raspberry Stretch, the best way is to use VNC and adjust the network setting on the graphical desktop. Everything else is done in shell via SSH and Putty.

There are several scripts active during a scan process. listen.sh is started via an rc.local entry (with &) and reads the GPIO input. Ideally, this should be done via interrupts. But at time of the tool development, I didn't know that such methods existed. Hence, I implemented it with a polling loop. 

If the button is pressed, the scan script is triggered. The scan script triggers scanimage (which probably needs to be installed) to send a scan command to the Canon printer. It then receives the image as an pnm-file. 

This pnm-file is then handed over to a converter script. Notice, that every statement pass is implemented with an "&". This ensures, that multiple processes can run in parallel. This is due the long time of the conversion process. Typically, I scan faster than the Raspberry outputs the final files.

The scan_converter script triggers the convert command from ImageMagick (also probably something you need to install first). Then, in order to have the whitish background of the paper really white, some magic is done via ghostscript. (Again, something you want to install first).

There is some logic in saving the intermediate results in temp files, which I don't know how (anymore).

Nonetheless, at the end, the final PDF is stored at a folder location, which is provided to the network as a samba share. This is where every client can grab his scanned images from.


Greetings to my future self. :)
