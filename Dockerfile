FROM centos

#install jdk and tomcat 
ADD /usr/local/src/jdk-8u211-linux-x64.tar.gz /usr/java/
ADD /usr/local/src/apache-tomcat-8.5.40.tar.gz /usr/local/

#jdk enviroment
ENV JAVA_HOME=/usr/java/jdk1.8.0_211
ENV JRE_HOME=/usr/java/jdk1.8.0_211/jre
ENV CLASSPATH=$JAVA_HOME/lib:$JAVA_HOME/jre/lib
ENV PATH=$JAVA_HOME/bin:$PATH

EXPOSE 8080

RUN rm -rf /usr/local/apache-tomcat-8.5.40/webapps/ROOT
COPY target/*.war /usr/local/apache-tomcat-8.5.40/webapps/ROOT.war

CMD ["/usr/local/apache-tomcat-8.5.40/bin/catalina.sh","run"]
