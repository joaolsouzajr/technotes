#!/bin/bash

echo 'get texlive installer'
wget http://repositorios.cpai.unb.br/ctan/systems/texlive/tlnet/install-tl-unx.tar.gz
echo 'extract installer' 
tar -zxvf install-tl-unx.tar.gz
echo 'install dependencies'
dnf install perl-MD5 -y
echo 'run installer'
./install-tl-*/install-tl
echo 'finish textlive installation'
