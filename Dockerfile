FROM maven:latest
RUN apt-get update && apt-get install git openjdk-17-jdk-headless -y
WORKDIR /home/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/boxfuse-sample-java-war-hello/
RUN mvn package
RUN mkdir /home/warnik/
CMD cp ./target/hello-1.0.war /home/warnik/
