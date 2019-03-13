#!/usr/bin/env python
from time import sleep
import os
import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM)
GPIO.setup(23, GPIO.IN, pull_up_down = GPIO.PUD_DOWN)

while True:
	if ( GPIO.input(23) == 1 ):
		os.system('/root/scripts/scan.sh &')
		sleep(1);
