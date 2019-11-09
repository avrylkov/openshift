FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} demo-openshift-app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo-openshift-app.jar"]
#VOLUME /tmp
#ADD ./target/demo-openshift-0.0.1-SNAPSHOT.jar demo-openshift-app.jar
#ENV JAVA_OPTS=""
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /demo-openshift-app.jar" ]