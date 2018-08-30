#!/bin/bash
sudo add-apt-repository ppa:webupd8team/java
sudo apt update
sudo apt install oracle-java8-installer
sudo apt install ant
echo export JAVA_HOME=/usr/lib/jvm/java-8-oracle >> ~/.profile
source ~/.profile
