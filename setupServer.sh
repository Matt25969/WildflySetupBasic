#!/usr/bin/env bash
cd /var/lib
sudo rm -R wildfly-10.1.0.Final
sudo rm -R wildfly-10.1.0.Final.zip
wget "https://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.zip"
unzip wildfly-10.1.0.Final.zip
sudo rm wildfly-10.1.0.Final/standalone/configuration/standalone.xml
sudo cp /home/ubuntu/server/standalone.xml wildfly-10.1.0.Final/standalone/configuration/
sudo sh wildfly-10.1.0.Final/bin/standalone.sh &

