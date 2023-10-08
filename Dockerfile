FROM adoptopenjdk:11-jre-hotspot
COPY target/devops-engineer-details-1.0-SNAPSHOT.jar /app/devops-engineer-details-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "/app/devops-engineer-details-1.0-SNAPSHOT.jar"]


