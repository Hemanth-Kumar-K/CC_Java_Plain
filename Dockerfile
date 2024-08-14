# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java application
RUN javac Main.java

# Expose port 4000 to the outside world
EXPOSE 4000

# Run the Java application
CMD ["java", "Main"]
