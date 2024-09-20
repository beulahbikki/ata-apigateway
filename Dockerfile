# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY target/api-gateway-0.0.1-SNAPSHOT.jar /app/api-gateway.jar

# Expose the API Gateway port
EXPOSE 8094

# Run the application
ENTRYPOINT ["java", "-jar", "/app/api-gateway.jar"]

