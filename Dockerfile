FROM 192.168.12.220/fitting/tomcat:latest
ARG source
WORKDIR /usr/local/apache-tomcat-8.5.40/webapps
RUN rm -rf /usr/local/apache-tomcat-8.5.40/webapps/ROOT
COPY target/*.war /usr/local/apache-tomcat-8.5.40/webapps/ROOT.war

EXPOSE 8080
CMD ["/usr/local/apache-tomcat-8.5.40/bin/catalina.sh","run"]