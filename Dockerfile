FROM tomcat:7.0

MAINTAINER Mikhail

RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY target/ROOT.war /usr/local/tomcat/webapps/