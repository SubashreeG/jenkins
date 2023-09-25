# Use an official OpenJDK runtime as a parent image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build context into the container
COPY devops-engineer-details-1.0-SNAPSHOT.jar /app/

# Specify the command to run your Java application
CMD ["java", "-jar", "devops-engineer-details-1.0-SNAPSHOT.jar"]
