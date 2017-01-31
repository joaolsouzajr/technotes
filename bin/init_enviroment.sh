#!/bin/bash


curl -L -s get.jenv.io | bash
source "$HOME/.jenv/bin/jenv-init.sh"
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.tar.gz

mkdir -p apps/java
tar -xzf jdk-8u112-linux-x64.tar.gz -C apps/java
jenv install java jdk1.8.0_112 $HOME/apps/java/jdk1.8.0_112

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install maven
sdk install groovy
sdk install gradle
sdk install grails
sdk install springboot

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm install v6.9.2

#clear
rm jdk-8u111-linux-x64.tar.gz
rm jdk-8u112-linux-x64.tar.gz

 

