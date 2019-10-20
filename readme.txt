#========== Docker =============
# G:\Docker Toolbox\doodle\
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

docker ps
docker-machine ip
curl 192.168.99.100:8080/time
#=========== minishift ==============

minishift start
minishift console
minishift stop

https://192.168.99.100:8443/console
developer/developer

oc new-app redhat-openjdk18-openshift:1.3~https://github.com/avrylkov/openshift.git

oc login -u developer -p developer
oc project <projectname>

oc new-app --docker-image=avrylkov/demo-openshift --name=demo-openshift
# oc new-app avrylkov/demo-openshift

oc status

oc expose dc/demo-openshift --port=8080


