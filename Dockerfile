# Use a base image with Java pre-installed
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build context into the container
# Dockerfile located in /var/lib/jenkins/workspace/dockertrial/dockerfile-repo

# Copy the JAR file from the parent directory (dockertrial) into the container
COPY ../target/devops-engineer-details-1.0-SNAPSHOT.jar /app/


# Define the command to run your Java application
CMD ["java", "-jar", "devops-engineer-details-1.0-SNAPSHOT.jar"]
