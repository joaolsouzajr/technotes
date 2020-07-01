# Raspberry PI

## Raspberry PI model B Rev.1 2011.12

* [Hardware detalis](https://raspberry-projects.com/pi/category/pi-hardware/raspberry-pi-model-b)
* [GPIO](https://elinux.org/RPi_Low-level_peripherals)
* [SoC Broadcom BCM2835](https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2835/README.md)

## Install OS

Instructions

* Get the [OS images](https://www.raspberrypi.org/downloads/raspberry-pi-os/)
* Follow the [Install Guide](https://www.raspberrypi.org/documentation/installation/installing-images/linux.md)

Command to install

    sudo dd bs=4M if=2020-05-27-raspios-buster-lite-armhf.img of=/dev/sdc conv=fsync

## Getting started

The raspberry pi hostname is **raspberrypi**

Active SSH on raspberry pi

    sudo systemctl enable ssh
    sudo systemctl start ssh


