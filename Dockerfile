
FROM openjdk:8-jdk AS build
WORKDIR /app
COPY . .
RUN ./mvnw clean package

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/myapp.jar .
CMD ["java", "-jar", "myapp.jar"]