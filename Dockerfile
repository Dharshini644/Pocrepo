#lightweight OpenJDK base image
FROM eclipse-temurin:21-jdk-alpine
#app directory creation
WORKDIR /app
#Copy the built jar
COPY app/build/libs/app-1.0.0.jar app.jar
#jar run
ENTRYPOINT ["java", "-jar", "app.jar"]
