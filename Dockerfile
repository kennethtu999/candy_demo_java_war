FROM java:8
VOLUME /tmp
ADD target/candy_demo_web-0.0.8-SNAPSHOT.war app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
