#!/bin/sh

export PATH=$PATH:$HOME/.local/bin/

#OpenJDK
#export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.60.x86_64

#Current JVM from jvm
export JAVA_HOME=$HOME/.sdkman/candidates/java/current
export PATH=$PATH:$JAVA_HOME/bin/

export M2_HOME=$HOME/.sdkman/candidates/maven/current
export PATH=$PATH:$M2_HOME/bin

export GRADLE_HOME=$HOME/.sdkman/candidates/gradle/current
export GRADLE_OPTS=-Xms256m' '-Xmx512m

#export GRAILS_HOME=$HOME/.sdkman/candidates/grails/current

#export GROOVY_HOME=$HOME/.sdkman/candidates/groovy/current

export PATH=$PATH:$GROOVY_HOME/bin
export PATH=$PATH:$GRADLE_HOME/bin

#export ANDROID_SDK_ROOT=$HOME/Android/Sdk

#export MSP430_GCC_HOME=$HOME/toolchain/ti/msp430-gcc
#export PATH=$PATH:$MSP430_GCC_HOME/bin

#export JBOSS_HOME=$HOME/Dev/atlantico/coelce/dev/appserver/wildfly-8.1.0.Final
#export PATH=$PATH:$JBOSS_HOME/bin

#python
#export WORKON_HOME=~/Dev/envspy

#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#source /bin/virtualenvwrapper.sh

#texlive
#PATH=/usr/local/texlive/2015/bin/x86_64-linux:$PATH; export PATH 
#MANPATH=/usr/local/texlive/2015/texmf-dist/doc/man:$MANPATH; export MANPATH 
#INFOPATH=/usr/local/texlive/2015/texmf-dist/doc/info:$INFOPATH; export INFOPATH


#github
#export GITHUB_CONSUMER_SECRET=4c91ee7bf76d7a40a6921186eec8f93b12290d4c

#nodejs
#export NODEJS_HOME=$HOME/apps/node/node-v4.2.2-linux-x64
#export PATH=$PATH:$NODEJS_HOME/bin

#export POSTGRE_HOME=/opt/PostgreSQL/9.4/
#export PATH=$PATH:$POSTGRE_HOME/bin

#toolchain
#export PATH=$PATH:$HOME/x-tools-new/arm-unknown-linux-gnueabi/bin

