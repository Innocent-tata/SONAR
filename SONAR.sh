#!/bin/bash
#Description: Installing Sonarqube
#Author: Innocent Tata

echo "initializing sonarqube installation..."
sleep 3
su - vagrant
sudo yum update -y install java-11-openjdk-devel -y install java-11-openjdk -y
cd /opt  
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
sleep 2
echo "sonarqube installed and started"
