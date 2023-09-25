# Use a base image with Java pre-installed
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build context into the container
COPY /var/lib/jenkins/workspace/dockertrial/target/devops-engineer-details-1.0-SNAPSHOT.jar /app/

# Define the command to run your Java application
CMD ["java", "-jar", "devops-engineer-details-1.0-SNAPSHOT.jar"]
