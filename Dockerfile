FROM openjdk:11
WORKDIR /var/app
COPY target/SimpleApp-0.0.1-SNAPSHOT.jar .
CMD ["java", "-jar" ,"SimpleApp-0.0.1-SNAPSHOT.jar"]