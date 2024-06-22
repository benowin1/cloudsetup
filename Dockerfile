FROM openjdk:17
VOLUME /tmp
RUN mvn  clean package
EXPOSE 8080
COPY target/demo.war demo.war
ENTRYPOINT ["java","-jar","/demo.war"]
