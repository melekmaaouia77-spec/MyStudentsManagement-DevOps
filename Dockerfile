# Étape 1 : build du projet (facultatif, on peut utiliser le jar déjà généré)
# FROM maven:3.9.9-eclipse-temurin-17 AS build
# WORKDIR /app
# COPY . .
# RUN mvn clean package -DskipTests

# Étape 2 : image finale avec Java 17
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]