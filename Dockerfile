# Stage 1: Build the Java application
FROM openjdk:8-jdk AS build
WORKDIR /app
COPY . .
RUN ./mvnw clean package

# Stage 2: Create a container with the built Java application
FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/myapp.jar .
CMD ["java", "-jar", "myapp.jar"]