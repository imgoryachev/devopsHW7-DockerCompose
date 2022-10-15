FROM maven:3.8-eclipse-temurin-11-alpine
RUN apk update && apk add git
WORKDIR /home/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/boxfuse-sample-java-war-hello/
RUN mvn package
CMD cp ./target/hello-1.0.war /warnik
