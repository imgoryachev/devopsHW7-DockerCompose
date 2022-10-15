FROM maven:3.8-eclipse-temurin-11-alpine
RUN apk update && apk install git
WORKDIR /home/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/boxfuse-sample-java-war-hello/
RUN mvn package
RUN mkdir /home/warnik/
CMD cp ./target/hello-1.0.war /home/warnik/hello-1.0.war
