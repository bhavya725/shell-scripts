#!/bin/bash
echo $0
echo $1
echo $2
docker images
docker login -u bhavyapandey1210 -p $password
docker tag $1:$2 bhavyapandey1210/$1:v1
docker push bhavyapandey1210/$1:v1
docker logout
