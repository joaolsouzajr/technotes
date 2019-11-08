#!/bin/sh
#virtualbox

aptcmd()
{
    echo "install virtualbox"
    curl https://www.virtualbox.org/download/oracle_vbox_2016.asc -o /tmp/oracle_vbox_2016.asc
    curl https://www.virtualbox.org/download/oracle_vbox.asc -o /tmp/oracle_vbox.asc
    apt-key add /tmp/oracle_vbox_2016.asc
    apt-key add /tmp/oracle_vbox.asc
    add-apt-repository \
        "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian  $(lsb_release -cs) contrib"
    apt-get update
    apt-get install virtualbox-6.0
}

dnfcmd()
{
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | rpm --import -
    wget -q http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo -O- | tee /etc/yum.repos.d/virtualbox.repo
    dnf install VirtualBox-5.1

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

