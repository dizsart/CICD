FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="darogadibia@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 9100

# The application's jar file
ARG JAR_FILE=target/cicd-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} cicd.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/cicd.jar"]
