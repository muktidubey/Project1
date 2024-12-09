FROM openjdk:8

FROM maven:3.8-jdk-11

FROM mysql:5.6
      
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/vprofile-v2.war $APP_HOME/app.jar 

WORKDIR $APP_HOME

CMD  CMD ["java", "-jar", "app.jar"]
