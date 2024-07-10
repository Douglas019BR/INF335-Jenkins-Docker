# Java image
FROM openjdk:11

# Set working directory
WORKDIR /app

# Import files
COPY src/main/java/OlaUnicamp.java /app/

# Compile Java file
RUN javac OlaUnicamp.java

# Run java command
CMD ["java", "OlaUnicamp"]