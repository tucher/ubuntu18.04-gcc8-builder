docker build  -t ubuntu18.04-gcc8-builder .
docker tag ubuntu18.04-gcc8-builder tucher/ubuntu18.04-gcc8-builder
docker push tucher/ubuntu18.04-gcc8-builder
