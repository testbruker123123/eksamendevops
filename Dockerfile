
FROM maven:3.9.0 AS build
#ENV JAVA_HOME /usr/local/openjdk-17
COPY . /app
WORKDIR /app
#COPY pom.xml .
RUN mvn dependency:go-offline

RUN mvn package

FROM openjdk:17-jdk-slim AS java-runtime
WORKDIR /app
#ARG JAR_FILE=target/bakemyday.jar
COPY --from=build /app/target/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]

