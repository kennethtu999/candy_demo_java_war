FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/candy_demo_web-0.0.8-SNAPSHOT.war app.jar
ENTRYPOINT ["java","-Dfile.encoding=UTF-8","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","--debug"]
