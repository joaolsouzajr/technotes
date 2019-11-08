#!/bin/sh

aptcmd()
{
	echo "Debian like, apt-get commands"
	apt-get install vim -y
	apt-get install git -y
	apt-get install svn -y
	apt-get install util-linux -y
	apt-get install htop -y
	apt-get install	zsh -y
	apt-get install zip -y
	apt-get install curl -y
	apt-get install wget -y
	apt-get install dkms -y
	apt-get install sudo -y
  	apt-get install net-tools -y
  	apt-get instlal openssh-server -y
	apt-get install apt-transport-https -y
	apt-get install tmux -y
}

dnfcmd()
{
	echo "Red Hat like, dnf commands"
	#utils
	dnf install vim -y
	dnf install git -y
	dnf install svn -y
	dnf install util-linux-user -y
	dnf install htop -y
	dnf install zsh -y
	dnf install curl -y
	dnf install dkms -y
	#rpmfusion no free
	su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
	dnf install unrar -y
	dnf install tmux -y
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

