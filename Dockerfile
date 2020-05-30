# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ADD target/UserRegistration-0.0.1-SNAPSHOT.jar UserRegistration-0.0.1-SNAPSHOT.jar
EXPOSE 8089




# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","UserRegistration-0.0.1-SNAPSHOT.jar"]