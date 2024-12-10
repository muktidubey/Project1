debian:bookworm-slim
      
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/vprofile-v2.war $APP_HOME/app.jar 

WORKDIR $APP_HOME

CMD  CMD ["java", "-jar", "app.jar"]
