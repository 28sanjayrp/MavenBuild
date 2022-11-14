FROM tomcat:9
RUN apt-get update
RUN apt install vim -y
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8888
CMD ["catalina.sh", "run"]
