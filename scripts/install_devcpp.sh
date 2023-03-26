#!/bin/sh

aptcmd()
{
  apt-get install build-essential -y
  apt-get install linux-headers-$(uname -r) -y
  #python virtual enviroment
  #apt-get install python3-venv -y
  #rbenv dependencies to install ruby 
  apt-get install libssl-dev -y
  apt-get install libreadline-dev -y
  # cmake
  apt-get install cmake -y
  #C/C++ libs
  apt-get install libgtk2.0-dev -y
  apt-get install libavcodec-dev -y
  apt-get install libavformat-dev -y
  apt-get install libswscale-dev -y
  apt-get install g++-multilib -y
  apt-get install pkg-config -y
  apt-get install libncurses5 -y
  apt-get install libusb-0.1-4 -y
  apt-get install libgconf-2-4 -y
  apt-get install libtinfo5 -y
  #ARM developer
  apt-get install binutils-arm-none-eabi -y 
  apt-get install gcc-arm-none-eabi -y
  apt-get install gdb-arm-none-eabi -y
  #C/C++ libs i386
  dpkg --add-architecture i386
  apt-get update
  apt-get install libc6-dev-i386 -y
  apt-get install libstdc++6:i386 -y
  apt-get install libgcc1:i386 -y
  apt-get install libncurses5:i386 -y   
  apt-get install libgtk2.0-0:i386 -y
  apt-get install libgtk2.0-dev:i386 -y
  apt-get install libavcodec-dev:i386 -y
  apt-get install libavformat-dev:i386 -y
  apt-get install libswscale-dev:i386 -y
}


dnfcmd()
{
	dnf group install 'C Development Tools and Libraries' -y
  dnf install kernel-devel -y
}


apt-get --help > /dev/null 2>&1
has_apt=$?
dnf --help > /dev/null 2>&1
has_dnf=$?

if [ "$has_apt" -eq "0" ]; then
	aptcmd
fi
if [ "$has_dnf" -eq "0" ]; then
	dnfcmd
fi
