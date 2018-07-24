#!/bin/bash

aptcmd()
{
	echo "Debian like, apt-get commands"
	#https://code.visualstudio.com/docs/setup/linux#_debian-and-ubuntu-based-distributions
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
	sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
	apt-get update
	apt-get install code -y # or code-insiders
}

dnfcmd()
{
	echo "Red Hat like, dnf commands"
	#https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
	rpm --import https://packages.microsoft.com/keys/microsoft.asc
	sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
	dnf check-update
	dnf install code -y
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

