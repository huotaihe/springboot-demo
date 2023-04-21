FROM openjdk:17-jdk-alpine
LABEL authors="Taihe.Huo"

RUN mkdir /project
RUN mkdir /project/tmp
WORKDIR /project

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY target/springboot-demo.jar /project/springboot-demo.jar

ENV SERVER_PORT=8080

EXPOSE $SERVER_PORT

ENTRYPOINT exec java -jar springboot-demo.jar
