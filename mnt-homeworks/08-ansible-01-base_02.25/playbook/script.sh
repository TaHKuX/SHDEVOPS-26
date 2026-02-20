#!/bin/bash

if docker inspect ubuntu7 >/dev/null 2>&1; then
    docker start ubuntu7
else
    docker run -d --name ubuntu7 ubuntu tail -f /dev/null &&
    docker exec ubuntu7 apt update >/dev/null &&
    docker exec ubuntu7 apt install -y python3 >/dev/null
fi

if docker inspect centos7 >/dev/null 2>&1; then
    docker start centos7
else
    docker run -d --name centos7 centos:7 tail -f /dev/null
fi

if docker inspect fedora7 >/dev/null 2>&1; then
    docker start fedora7
else
    docker run -d --name fedora7 centos:7 tail -f /dev/null
fi

ansible-playbook -i inventory/prod.yml site.yml \
  --vault-password-file <(echo netology)

docker stop ubuntu7
docker stop centos7
docker stop fedora7