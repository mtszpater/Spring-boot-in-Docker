FROM openjdk:8-jre-alpine
VOLUME /tmp
COPY ./target/app.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]