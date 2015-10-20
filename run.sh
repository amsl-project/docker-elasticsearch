#!/bin/sh

# tomcat admin user
sed -i '36i\<user username="admin" password="password" roles="manager-gui,admin-gui"/>' /etc/tomcat7/tomcat-users.xml

# start tomcat
service tomcat7 restart

# start el
/home/es/elasticsearch/bin/service/elasticsearch start

exec tail -f /var/log/tomcat7/catalina.out