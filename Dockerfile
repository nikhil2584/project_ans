FROM tomcat:latest
RUN -d -p 5000:5000 --name appserver tomcat:latest
COPY //*.war /usr/local/tomcat/webapps
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
