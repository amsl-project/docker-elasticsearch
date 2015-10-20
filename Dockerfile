# Pull base image.
FROM debian:8
MAINTAINER Gregor Tätzner <brummbq@gmail.com>

# install java deps
RUN apt-get update && apt-get install -y curl openjdk-7-jre tomcat7 tomcat7-admin

RUN adduser --disabled-password --home=/home/es --gecos "" es

# uncomment if you don't want to download virtuoso each time you build the image.
# Note that the file ./virtuoso-opensource-7.1.0.zip should be in a current directory
ADD ./install-elasticsearch.sh /home/es/
ADD ./elasticsearch-1.1.1.tar.gz /home/es/
ADD run.sh /root/run.sh
ADD erm.war /var/lib/tomcat7/webapps/

RUN chmod +x /home/es/install-elasticsearch.sh && chown -R es:es /home/es && chmod +x /root/run.sh

WORKDIR /home/es
RUN su - es -c "/home/es/install-elasticsearch.sh"

EXPOSE 8080 9200

CMD ["/root/run.sh"]
