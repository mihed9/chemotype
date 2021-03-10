FROM tomcat:8.0

MAINTAINER Mikhail

COPY "target/ROOT.war" "/usr/local/tomcat/webapps/"