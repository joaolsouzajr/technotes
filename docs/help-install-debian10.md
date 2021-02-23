
apt-search linux-image-5.9*

apt-get install linux-image-5.9.0-0.bpo.5-amd64

apt-get install linux-headers-$(uname -r) build-essential

apt install nvidia-detect

apt install nvidia-driver

echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf

systemctl set-default multi-user.target

systemctl reboot

systemctl set-default graphical.target

echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf

git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/sforshee/wireless-regdb

git clone https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git

git clone https://github.com/thesofproject/sof-bin.git

cd sof-bin

git checkout origin/stable-v1.6.1 -b stable-v1.6.1

sudo ./go.sh

wget https://download.nvidia.com/XFree86/Linux-x86_64/460.39/NVIDIA-Linux-x86_64-460.39.run


apt purge *nvidia*

apt install --reinstall xserver-xorg-core xserver-xorg-video-nouveau

 X -configure





