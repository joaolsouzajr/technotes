#!/bin/bash

echo ' get textmaker from vesion for fedora 23'
wget http://www.xm1math.net/texmaker/texmaker_fedora23-4.5-xm1.x86_64.rpm
echo 'call dnf to install texmaker_fedora23-4.5-xm1.x86_64.rpm'
dnf install texmaker_fedora23-4.5-xm1.x86_64.rpm -y
echo 'finish texmaker installation'
