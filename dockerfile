FROM maven:3.8.4-openjdk-8
      
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/vprofile-v2.war $APP_HOME/app.jar 

WORKDIR $APP_HOME

CMD  CMD ["java", "-jar", "app.jar"]
