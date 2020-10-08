#!/bin/bash
sudo apt-get update
sudo apt-get install -y zip
sudo apt-get install -y unzip
sudo apt-get install -y openjdk-8-jdk
sudo apt-get install git
java -version



sudo apt-get update
sudo apt install -y maven
mvn -version


cd /tmp
wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.zip
unzip apache-tomcat-*.zip
sudo mkdir -p /opt/tomcat
sudo mv apache-tomcat-8.5.57 /opt/tomcat/
sudo chown -R ubuntu: /opt/tomcat
sudo sh -c 'chmod +x /opt/tomcat/apache-tomcat-8.5.57/bin/*.sh'
sudo ufw allow 8080/tcp
cd /opt/tomcat/apache-tomcat-8.5.57/conf/
echo "<tomcat-users>
   <role rolename="admin-gui"/>
   <role rolename="manager-gui"/>
   <user username="admin" password="admin_password" roles="admin-gui,manager-gui"/>
</tomcat-users>"  >> tomcat-users.xml





sudo apt-get update
sudo apt-get -y install postgresql-13


sudo apt install -y postgis

cd /tmp
sudo touch dbscript.sql
sudo chmod 777 dbscript.sql
echo "CREATE USER cyclos WITH PASSWORD 'cyclos';
CREATE DATABASE cyclos4 ENCODING 'UTF-8' TEMPLATE template0 OWNER cyclos;
\c cyclos4
create extension cube;
create extension earthdistance;
create extension postgis;
create extension unaccent; \q" >> dbscript.sql

sudo -u postgres psql -f dbscript.sql


cd /tmp
sudo touch cyclos.sh
sudo chmod 777 cyclos.sh
echo "git config --global user.name "Tanuja Adabala"
git config --global user.email "adabalatanuja2@gmail.com"
git clone https://gitlab.com/adabala/gitlab-terraform-aws.git
cd gitlab-terraform-aws
sudo cp -r cyclos /opt/tomcat/apache-tomcat-8.5.57/webapps" >> cyclos.sh

cd /tmp
sh cyclos.sh

cd /opt/tomcat/apache-tomcat-8.5.57/bin
sudo chmod +x startup.sh
sudo chmod +x catalina.sh

cd /opt/tomcat/apache-tomcat-8.5.57/bin
sh startup.sh
