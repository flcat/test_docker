FROM openjdk:17

#WORKDIR /root

ARG JAR_PATH=./build/libs

COPY ${JAR_PATH}/test-0.0.1-SNAPSHOT.jar ${JAR_PATH}/test-0.0.1-SNAPSHOT.jar

#CMD ["java","-jar","./build/libs/test-0.0.1-SNAPSHOT.jar"]
CMD java -jar -Dspring.profiles.active=${active} test-0.0.1-SNAPSHOT.jar

FROM nginx:1.18.0
COPY default.conf /etc/nginx/conf.d/default.conf