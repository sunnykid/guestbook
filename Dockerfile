FROM openjdk:11

ARG VERSION


COPY target/guestbook-0.0.1-SNAPSHOT.jar /app/guestbook.jar

LABEL maintainer="Kim Yu Taek<sunnykid7@gmail.com>" \
      title="Guestbook App" \
      version="$VERSION" \
      description="This image is guestbook service"

ENV APP_HOME /app
EXPOSE 8080
VOLUME /app/upload

WORKDIR $APP_HOME
ENTRYPOINT ["java"]
CMD ["-jar", "guestbook.jar"]
