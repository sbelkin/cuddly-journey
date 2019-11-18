FROM maven:3.6.1-jdk-8 AS build
COPY pom.xml /usr/src/app/pom.xml
RUN mvn -f /usr/src/app/pom.xml verify --fail-never
COPY src /usr/src/app/src
RUN mvn -f /usr/src/app/pom.xml clean package

FROM openjdk:8
COPY --from=build /usr/src/app/target/cuddly-journey-*.jar /usr/src/app/application.jar
# Create application user
EXPOSE 8080
WORKDIR /usr/src/app/
CMD ["java", "-jar", "application.jar"]