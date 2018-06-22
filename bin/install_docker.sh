#!/bin/bash

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

#on production
#dnf list docker-ce  --showduplicates | sort -r
#sudo dnf -y install docker-ce-<VERSION>

#sudo systemctl start docker
#sudo docker run hello-world


#uninstall
#sudo dnf remove docker-ce
#remove images
#sudo rm -rf /var/lib/docker