# Start with a base image containing java runtime
FROM java:latest
# Make port 8080 available to the world outside this container
EXPOSE 8080
ADD target/spring-boot-docker-maven.jar spring-boot-docker-maven.jar 
#run the jar file
ENTRYPOINT ["java" , "-jar", "spring-boot-docker-maven.jar"]
