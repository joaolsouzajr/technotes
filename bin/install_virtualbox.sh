#!/bin/bash

#virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | rpm --import -
wget -q http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo -O- | tee /etc/yum.repos.d/virtualbox.repo
dnf install VirtualBox-5.1
