FROM ubuntu:20.04
ENV TZ=Asia/Tbilisi
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt install tzdata -y
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install tomcat9 -y
EXPOSE 8080
RUN apt install git -y
WORKDIR /home/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/boxfuse-sample-java-war-hello/
RUN mvn package
RUN mkdir /home/warnik/
CMD [ "cp ./target/hello-1.0.war /home/warnik/" ]
#FROM maven:latest
#RUN apt-get update && apt-get install git default-jdk -y
#WORKDIR /home/
#RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
#WORKDIR /home/boxfuse-sample-java-war-hello/
#RUN mvn package
#RUN mkdir /home/warnik/
#CMD [ "cp ./target/hello-1.0.war /home/warnik/" ]
