#!/bin/sh

aptcmd()
{
    echo "Uninstall old versions"
    apt-get remove docker docker-engine docker.io containerd runc
    apt-get update
    apt-get install \
        ca-certificates \
        curl \
        gnupg \
	lsb-release
    osname="$(lsb_release -si | tr '[:upper:]' '[:lower:]')"
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo \ 
	    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
	    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
}

dnfcmd()
{
    echo "Uninstall old versions"
    osname="$(lsb_release -si | tr '[:upper:]' '[:lower:]')"
    sudo dnf remove docker \
        docker-common \
        docker-selinux \
        docker-engine-selinux \
        docker-engine

    echo "Set up the repository"
    sudo dnf -y install dnf-plugins-core
    sudo dnf config-manager \
        --add-repo \
        https://download.docker.com/linux/$osname/docker-ce.repo
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
