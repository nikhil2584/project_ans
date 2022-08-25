FROM tomcat:latest
COPY ./webapp.war /usr/local/tomcat/webapps/
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
RUN container -d -p 7001:8080 appserver tomcat:latest
