#!/bin/bash
docker build -t jjino/radiant:latest -t jjino/radiant:$ID -f image/prod/Dockerfile ./image/prod
docker push jjino/radiant:latest
docker push jjino/radiant:$ID
kubectl apply -f radiant
# docker build -t jinoj/nginx:latest jjino/radiant:$SHA
kubectl set image deployments/radiant-deployment server=jjino/radiant:$ID
