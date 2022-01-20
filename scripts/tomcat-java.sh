#!bin/bash
apt update -y
cd /opt
#download  the java 
apt install openjdk-8-jre-headless -y
# istall the java with 
#rpm -ivh jdk-8u131-linux-x64.rpm
# install tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.11/bin/apache-tomcat-10.0.11-windows-x64.zip
#unzip the tomcat
apt install unzip -y
unzip apache-tomcat-10.0.11-windows-x64.zip
#rename tomcat
mv apache-tomcat-10.0.11 tomcat10
# change the permissions
chmod -R 700 tomcat10
# remove the zip file
rm -rf apache-tomcat-10.0.11-windows-x64.zip
#change the path
cd /opt/tomcat10/bin/
# start the apache  pre req is the java for the tomacat
./startup.sh



FROM maven:3.6.3-openjdk-11 AS maven
RUN apt-get update -y && apt-get upgrade -y && apt-get install git -y && apt-get install unzip -y
WORKDIR /opt
RUN https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.12/bin/apache-tomcat-10.0.12-windows-x64.zip
RUN  unzip apache-tomcat-10.0.12-windows-x64.zip
RUN mv apache-tomcat-10.0.12 tomcat10
RUN chmod -R 700 tomcat
WORKDIR /opt
RUN git clone https://github.com/prasad888/spring-framework-petclinic.git
WORKDIR /opt/spring-framework-petclinic
RUN mvn clean package
WORKDIR /opt/spring-framework-petclinic/target
RUN cp -R petclinic.war /opt/tomcat/webapps/
EXPOSE 8080
CMD chmod +x /opt/tomcat/bin/catalina.sh
CMD /opt/tomcat/bin/catalina.sh run










ubuntu : newone 18.04 version

#!bin/bash
apt update -y
apt upgrade -y
cd /opt
apt install default-jre -y
apt upgrade -y
# install tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.12/bin/apache-tomcat-10.0.12-windows-x64.zip
#unzip the tomcat
apt install unzip -y
unzip apache-tomcat-10.0.12-windows-x64.zip
#rename tomcat
mv apache-tomcat-10.0.12 tomcat10
# change the permissions
chmod -R 700 tomcat10
# remove the zip file
rm -rf apache-tomcat-10.0.12-windows-x64.zip
#change the path
cd /opt/tomcat10/bin/
# start the apache  pre req is the java for the tomacat
./startup.sh










#!/bin/bash 
#Download the java
cd /tmp 
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
#install
rpm -ivh jdk-8u131-linux-x64.rpm
#delete the rpm after java installatin
rm -f jdk-8u131-linux-x64.rpm
#install the tomcat
cd /opt
#download the tomcat zip
wget tomcat https://downloads.apache.org/tomcat/tomcat-9/v9.0.50/bin/apache-tomcat-9.0.50.zip.sha512
#unzip/extract
unzip apache-tomcat-9.0.50.
#rename
mv apache-tomcat-9.0.50. to tomcat
#change the permissions
chmod -R 700 tomcat
cd /tomcat/bin/./startup.sh