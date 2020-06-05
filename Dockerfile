FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR FILE=target/*.jar
COPY ${JAR FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]






# Datei Dockerfile (other example) - replace # below

#FROM ubuntu:18.04
#LABEL maintainer "name@somehost.com"
#RUN apt-get update && \
#    apt-get intall -y joe && \
#    apt-get clean && \
#rm -rf /var/lib/apt/lists/*
#CMD["/bin/bash"]


