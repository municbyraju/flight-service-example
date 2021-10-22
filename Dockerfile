FROM openjdk:8
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} flight-service-0.0.1.jar
COPY /src/main/resources/application.properties /app/application.properties
ENTRYPOINT ["java","-Dspring.config.location=classpath:file:/app/application.properties","-jar","/flight-service-0.0.1.jar"]