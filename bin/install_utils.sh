#!/bin/bash

#utils
dnf install vim -y
dnf install git -y
dnf install svn -y
dnf install terminator -y
dnf install util-linux-user -y
dnf install htop -y
dnf install texmaker -y
dnf install zsh -y
dnf install dkms -y
dnf install kernel-devel -y
dnf group install 'C Development Tools and Libraries' -y
#rpmfusion no free
su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
dnf install unrar -y

#https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
dnf install code -y
