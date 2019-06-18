#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install unzip
sudo apt-get update
sudo apt-get install maven -y
sudo apt install -y openjdk-8-jdk
wget "https://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.zip"
unzip wildfly-10.1.0.Final.zip
rm wildfly-10.1.0.Final/standalone/configuration/standalone.xml
cp WildflySetupBasic/standalone.xml wildfly-10.1.0.Final/standalone/configuration/
sudo sh wildfly-10.1.0.Final/bin/standalone.sh &

