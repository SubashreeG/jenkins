FROM adoptopenjdk:11-jre-hotspot
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

COPY /var/lib/jenkins/workspace/SubashreeProfile/target/devops-engineer-details-1.0-SNAPSHOT.jar /app/devops-engineer-details-1.0-SNAPSHOT.jar

CMD ["java", "-jar", "/app/devops-engineer-details-1.0-SNAPSHOT.jar"]


