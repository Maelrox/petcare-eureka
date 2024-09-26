FROM bellsoft/liberica-openjdk-alpine:21

WORKDIR /app
RUN apk update && apk add --no-cache curl

COPY build/libs/eureka-1.0.jar eureka.jar

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "eureka.jar"]