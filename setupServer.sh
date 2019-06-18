#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install unzip
sudo apt install -y openjdk-8-jdk
sudo apt-get install node.js -y
sudo apt-get install npm -y
wget "https://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.zip"
unzip wildfly-10.1.0.Final.zip
rm wildfly-10.1.0.Final/standalone/configuration/standalone.xml
cp WildflySetup/standalone.xml wildfly-10.1.0.Final/standalone/configuration/
sudo sh wildfly-10.1.0.Final/bin/standalone.sh &

