#!/usr/bin/env bash

set -ex

sudo ifconfig enp0s25 192.168.11.2
# sudo ifconfig enp0s25 192.168.88.105

# sudo arp -s 192.168.11.1 02:aa:bb:cc:dd:1a
# sudo arp -s 192.168.11.1 00:1D:73:B4:40:1F


# tftp  192.168.11.1 -m binary -c put ./openwrt-19.07.4-ar71xx-generic-wzr-hp-g300nh-squashfs-tftp.bin

echo -e "binary\nrexmt 1\ntimeout 60\ntrace\nput openwrt-19.07.4-ar71xx-generic-wzr-hp-g300nh-squashfs-tftp.bin\n" | tftp 192.168.11.1