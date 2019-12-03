

1. Build docker images
```
docker build --rm  -t "ubuntu-20191004:Dockerfile" -f ubuntu.Dockerfile .
docker run -it ubuntu-20191004:Dockerfile
docker ps -a
docker commit <Container ID>  ubuntu-20191004
```


2. Push image to dockerhub

login to docker hub

create new repository if this is a new container, otherwise update the tag

```
docker tag ubuntu-20191004 leavesntwigs/lrose-build-env-ubuntu:20191004
docker push leavesntwigs/lrose-build-env-ubuntu:20191004

3. Change circleci.yml script

FOR CENTOS 7

1. Build docker images
```
docker build --rm  -t "centos7-20191202:Dockerfile" -f centos7.Dockerfile .
docker run -it centos7-20191202:Dockerfile
docker ps -a
docker commit <Container ID>  centos7-20191202
```


2. Push image to dockerhub

login to docker hub

create new repository if this is a new container, otherwise update the tag

```
docker tag centos7-20191202 leavesntwigs/lrose-build-env-centos7:20191202
docker push leavesntwigs/lrose-build-env-centos7:20191202

3. Change circleci.yml script

