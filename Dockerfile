FROM openjdk:11
WORKDIR /app
COPY ./build/libs/my-cicd-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]