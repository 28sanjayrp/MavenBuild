FROM tomcat:9
RUN sudo apt-get update
RUN sudo apt install vim -y
COPY target/java-example.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8888
CMD ["catalina.sh", "run"]
