FROM dockerfile/java
MAINTAINER Ryan "shiymail@gmail.com"
RUN apt-get -qq update
RUN mkdir /www
COPY ./apache-tomcat-7.0.57.tar.gz /www/tomcat7.tar.gz
RUN (   cd /www && \
	tar zxf /www/tomcat7.tar.gz && \
	mv /www/apache-tomcat* /www/tomcat && \
	rm /www/tomcat7.tar.gz)
ADD ./run.sh /usr/local/bin/run
ENV JAVA_OPTS -server -Xms256m -Xmx1000m -XX:MaxPermSize=512M
VOLUME ["/www/webapps"]
EXPOSE 8080
CMD ["/bin/sh", "-e", "/usr/local/bin/run"]
