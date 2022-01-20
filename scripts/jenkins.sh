#!/bin/bash
cd /opt
apt update
#java installation
wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/16.0.2%2B7/d4a915d82b4c4fbb9bde534da945d746/jdk-16.0.2_linux-x64_bin.rpm
#start the java
rpm -ivh jdk-8u131-linux-x64.rpm
#install jenkins in linux os
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum -y install jenkins -y
systemctl start jenkins
systemctl enable jenkins



su - jenkins -s bin/bash
cd /etc
vi passwd
last line bin/bash cahnge line
inside jenkins dont ask sudo passwd give command
visudo
#set number
:set nu
100 line chanege
root    ALL=(ALL)       ALL
jenkins    ALL=(ALL)       ALL
vi sudoers.d/90-cloud-init-users
#cahnge ec2-user to jenkins