#!/bin/bash
imageName=flask-sample:latest
containerName=flask

docker build -t $imageName -f Dockerfile  .

echo Delete old container...
docker rm -f $containerName

echo Run new container...
docker run  -p 5000:5000 --name $containerName $imageName
