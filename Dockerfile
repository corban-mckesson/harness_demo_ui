FROM openjdk:11

EXPOSE 8080

RUN mkdir -p /app

WORKDIR /app

COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

CMD ["java","-jar","app.jar"]