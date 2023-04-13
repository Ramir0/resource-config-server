FROM openjdk:17.0.1-jdk-slim-buster

WORKDIR /app
COPY target/config-server-1.0.0.jar resource-config-server.jar
EXPOSE 8090

CMD ["java", "-jar", "-Dspring.profiles.active=prod", "resource-config-server.jar"]
