

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


