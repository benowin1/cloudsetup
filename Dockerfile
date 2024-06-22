FROM openjdk:17
VOLUME /tmp
RUN mvn  clean package
EXPOSE 8080
COPY target/SpringBootDemo.war SpringBootDemo.war
ENTRYPOINT ["java","-jar","/SpringBootDemo.war"]
