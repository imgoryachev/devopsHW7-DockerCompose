FROM maven:3.8.6-openjdk-18
RUN apt-get update
RUN apt-get install git -y
WORKDIR /home/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/boxfuse-sample-java-war-hello/
RUN mvn package
RUN mkdir /home/warnik/
CMD [ "cp ./target/hello-1.0.war /home/warnik/" ]