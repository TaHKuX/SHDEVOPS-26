#!/bin/bash

pb="site.yml"
inv="inventoy/prod.yml"

docker start ubuntu
docker start centos7
docker start fedora7

ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass

docker stop ubuntu
docker stop centos7
docker stop fedora7