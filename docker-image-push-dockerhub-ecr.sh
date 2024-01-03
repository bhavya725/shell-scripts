#!/bin/bash
docker images
#docker login command and password is passed through a local variable
docker login --Username bhavyapandey1210 --Password $password
docker tag dummy_image:latest bhavyapandey1210/dummy_image:v1
docker push bhavyapandey1210/dummy_image:v1
docker logout
#docker ecr login
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 775422423362.dkr.ecr.ap-south-1.amazonaws.com
docker tag dummy_image:latest 775422423362.dkr.ecr.ap-south-1.amazonaws.com/bhavya:latest
docker push 775422423362.dkr.ecr.ap-south-1.amazonaws.com/bhavya:latest
docker logout
