FROM openjdk:17

EXPOSE 8080

ADD ./build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "-Duser.timezone=Asia/Seoul", "/app.jar"]

FROM nginx
COPY ${JAR_FILE} app.jar # 빌드된 파일을 app.jar에 카피
ADD default443.conf /etc/nginx/conf.d/default443.conf
