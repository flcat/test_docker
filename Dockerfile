FROM openjdk:17
# ARG로 프로필 변수 정의
ARG PROFILES
# 이건 나중에 docker-compose에서 초기화 해줍니다.
ARG ENV
ARG JAR_FILE=build/libs/*.jar
WORKDIR /root
# JAR 파일 메인 디렉토리에 복사
COPY ./*.jar .

# 시스템 진입점 정의
# ENTRYPOINT ["java", "-jar", "/app.jar"]
CMD java -jar test-0.0.1-SNAPSHOT.jar