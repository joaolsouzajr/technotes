#!/bin/sh

aptcmd()
{
  apt-get install build-essential -y
	apt-get install linux-headers-$(uname -r) -y
  #python virtual enviroment
  apt-get install python3-venv -y
  #rbenv dependencies to install ruby 
  apt-get install libssl-dev -y
  apt-get install libreadline-dev -y
    
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
