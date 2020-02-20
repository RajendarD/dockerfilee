FROM centos

MAINTAINER Govardhan govardhanambati3@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz
RUN tar -xvf apache*.tar.gz
RUN mv apache-tomcat-8.5.51/* /opt/tomcat/
RUN yum install java -y
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/ThanishInfotech/Docker1/raw/master/dist/SampleWebApp.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh","run"]
