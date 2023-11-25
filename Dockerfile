# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-alpine
LABEL maintainer="VJ"
# set shell to bash
# source: https://stackoverflow.com/a/40944512/3128926
RUN apt-get update && apt-get install bash

# Set the working directory to /app
WORKDIR /webapps

# Copy the fat jar into the container at /app
COPY /target/docker-java-app-prod.jar /webapps/app

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run jar file when the container launches
CMD ["java", "-jar", "docker-java-app-prod.jar"]