FROM maven:3-openjdk-11 AS build
EXPOSE 8080
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN mvn clean package
CMD ["java","-jar","target/demo-0.0.1-SNAPSHOT.jar"]





#COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

