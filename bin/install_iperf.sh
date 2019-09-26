#!/bin/sh
echo "Install Iperf3"
apt-get update
apt-get remove iperf3 libiperf0
wget -O libiperf0_3.1.3-1_amd64.deb https://iperf.fr/download/ubuntu/libiperf0_3.1.3-1_amd64.deb
wget -O iperf3_3.1.3-1_amd64.deb https://iperf.fr/download/ubuntu/iperf3_3.1.3-1_amd64.deb
dpkg -i libiperf0_3.1.3-1_amd64.deb 
dpkg -i iperf3_3.1.3-1_amd64.deb
rm libiperf0_3.1.3-1_amd64.deb iperf3_3.1.3-1_amd64.deb