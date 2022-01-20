 sudo apt update
    apt install openjdk-8-jre-headless 
    3  wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/16.0.2%2B7/d4a915d82b4c4fbb9bde534da945d746/jdk-16.0.2_linux-x64_bin.rpm
    4  java -version
    5  wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
    6  sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    7  sudo apt update
    8  sudo apt install jenkins
    9  sudo systemctl start jenkins
   10  sudo systemctl status jenkins
   11  cat /var/lib/jenkins/secrets/initialAdminPassword







latest  ubuntu 18.04version


#!/bin/bash
cd /opt
apt update -y
#java installation
apt install openjdk-11-jre-headless
#start the java
#rpm -ivh jdk-8u131-linux-x64.rpm
#install jenkins in ubuntu
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt upgrade -y
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
systemctl enable jenkins









#!/bin/bash
cd /opt
apt update -y
#java installation
apt install openjdk-8-jre-headless -y
#start the java
#rpm -ivh jdk-8u131-linux-x64.rpm
#install jenkins in linux os
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt install jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins










jenkins in linux:18.04                                                        


#!/bin/bash 
#Download the java
cd /tmp 
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
#install
rpm -ivh jdk-8u131-linux-x64.rpm
#delete the rpm after java installatin
rm -f jdk-8u131-linux-x64.rpm
 
#jenkins installatin
#Enable EPEL
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
#installing with rpm
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#update
yum update -y
sudo amazon-linux-extras install epel
yum install daemonize -y
#install jenkins 
yum install jenkins -y 
#start 
systemctl start jenkins 
#os level service
systemctl enable jenkins 
#check status
systemctl status jenkins
