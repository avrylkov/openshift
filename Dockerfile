FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","com.example.openshift.demoOpenshift.DemoOpenshiftApplication"]
#VOLUME /tmp
#ADD ./target/demo-openshift-0.0.1-SNAPSHOT.jar demo-openshift-app.jar
#ENV JAVA_OPTS=""
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /demo-openshift-app.jar" ]