
FROM maven:3.9.0 AS build
COPY . /app
WORKDIR /app
RUN mvn dependency:go-offline

RUN mvn package

FROM openjdk:17-jdk-slim AS java-runtime
WORKDIR /app
COPY --from=build /app/target/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]

