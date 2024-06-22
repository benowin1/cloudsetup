FROM openjdk:17
VOLUME /tmp
EXPOSE 8080
COPY target/SpringBootDemo.jar SpringBootDemo.jar
ENTRYPOINT ["java","-jar","/SpringBootDemo.jar"]
