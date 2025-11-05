FROM eclipse-temurin:17-jdk-alpine


# metadata
LABEL maintainer="your-email@example.com"
LABEL version="1.0"
LABEL description="A simple Java application"

# working directory
WORKDIR /app

# Copy source code into the container
COPY src/main.java /app/main.java

# Compile the Java code
RUN javac main.java

# Run the Java application when the container state
CMD ["java", "main"]
