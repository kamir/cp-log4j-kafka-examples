FROM centos

MAINTAINER aksarav@middlewareinventory.com

RUN mkdir /opt/tomcat/

RUN yum -y install unzip

RUN yum -y install java
RUN java -version

RUN mkdir /opt/scripts

WORKDIR /opt/tomcat


#### This step failed during build => I loaded the archive manually
# RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.61/bin/apache-tomcat-8.5.61.zip
COPY apache-tomcat-8.5.61.zip apache-tomcat-8.5.61.zip
RUN unzip apache*.zip
RUN mv apache-tomcat-8.5.61/* /opt/tomcat/.

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

RUN chmod -R 777 /opt/tomcat

#RUN curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent4.sh | sh

WORKDIR /opt/scripts

#COPY startscript/run.sh /opt/scripts/run.sh
#RUN chmod 777 /opt/scripts/run.sh

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
#CMD ["/opt/scripts/run.sh", "run"]
