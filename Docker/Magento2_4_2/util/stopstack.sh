#!/bin/bash
cd /mnt/data/Cursos/Magento2-Payment/docker-m24-blanco/util
source vars

docker="/usr/bin/docker --context=$CONTEXT" 
$docker stack rm $STACKNAME