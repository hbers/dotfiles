#!/bin/bash

if grep -q WD-EXT /proc/mounts;
then
	transmission-daemon -f -c /home/hasan/İndirilenler/ &
fi
