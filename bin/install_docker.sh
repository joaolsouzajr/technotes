#!/bin/sh

aptcmd()
{
    echo "Uninstall old versions"
    apt-get remove docker docker-engine docker.io containerd runc
    apt-get update
    apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg2 \
        software-properties-common
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    apt-key fingerprint 0EBFCD88
    add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
}

dnfcmd()
{
    echo "Uninstall old versions"
    sudo dnf remove docker \
        docker-common \
        docker-selinux \
        docker-engine-selinux \
        docker-engine

    echo "Set up the repository"
    sudo dnf -y install dnf-plugins-core
    sudo dnf config-manager \
        --add-repo \
        https://download.docker.com/linux/fedora/docker-ce.repo
    echo "Install Docker CE"
    sudo dnf install docker-ce
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


#old docker
# tee /etc/yum.repos.d/docker.repo <<-'EOF'
# [dockerrepo]
# name=Docker Repository
# baseurl=https://yum.dockerproject.org/repo/main/fedora/$releasever/
# enabled=1
# gpgcheck=1
# gpgkey=https://yum.dockerproject.org/gpg
# EOF
# dnf install docker-engine
# systemctl enable docker.service


#on production
#dnf list docker-ce  --showduplicates | sort -r
#sudo dnf -y install docker-ce-<VERSION>

#sudo systemctl start docker
#sudo docker run hello-world


#uninstall
#sudo dnf remove docker-ce
#remove images
#sudo rm -rf /var/lib/docker