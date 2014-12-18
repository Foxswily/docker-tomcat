docker-tomcat
=============

# Usage

* git clone this repo
* wget -O tomcat7.tar.gz http://ftp.mirror.tw/pub/apache/tomcat/tomcat-7/v7.0.57/bin/apache-tomcat-7.0.57.tar.gz
* docker build -t ryan/tomcat .

# Setting

* Port : 8080
* webapps dir : /www/webapps
* env JAVA_OPTS=-server -Xms256m -Xmx1000m -XX:MaxPermSize=512M

# Run

`docker run -d -p=8080:8080 -v /etc/localtime:/etc/localtime  -v=/somedir/webapps:/www/webapps ryan/tomcat`
