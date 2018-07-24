#!/bin/bash

java_tar=jdk-8u171-linux-x64.tar.gz

#curl -L -s get.jenv.io | bash
#source "$HOME/.jenv/bin/jenv-init.sh"
#wget --no-check-certificate --no-cookies --header \
#  "Cookie:oraclelicense=accept-securebackup-cookie" \
#  http://download.oracle.com/otn-pub/java/jdk/8u171-b11/$java_tar
#  http://download.oracle.com/otn-pub/java/jdk/8u172-b11/jdk-8u172-linux-x64.tar.gz

#mkdir -p apps/java
#tar -xzf $java_tar -C apps/java
#mv $java_tar apps/java
#jenv install java jdk1.8.0_112 $HOME/apps/java/jdk1.8.0_112

curl -s "https://get.sdkman.io" | bash
#source "$HOME/.sdkman/bin/sdkman-init.sh"
#sdk install maven
#sdk install groovy
#sdk install gradle
#sdk install grails
#sdk install springboot

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh \
  | bash
#source $HOME/.nvm/nvm.sh
#nvm install v8.11.3

#clear

 

