cd doodle

git clone https://github.com/avrylkov/openshift.git

cd doodle/openshift
mvn clean install dockerfile:build
# docker run -p 8080:9080 -t hello-howtodoinjava/hello-docker  --name hello-docker-image
docker run -p 8080:8080 -t avrylkov/demo-openshift  --name demo-openshift-image

docker ps
docker stop xxxx  (name)

curl 192.168.99.100:8080/time

docker build -t avrylkov/demo-openshift .

docker login ;

docker push avrylkov/demo-openshift