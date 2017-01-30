#!/bin/bash

#zshell
dnf install zsh -y
chsh -s /usr/bin/zsh

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

