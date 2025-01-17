FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} cowinMgmt1.0.jar
ENTRYPOINT ["java","-jar","/cowinMgmt1.0.jar"]