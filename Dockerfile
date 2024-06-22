FROM openjdk:17
VOLUME /tmp
RUN mvn -f pom.xml clean package
EXPOSE 8080
COPY target/demo-0.0.1-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java","-jar","/demo.jar"]
