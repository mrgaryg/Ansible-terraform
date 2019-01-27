#!/bin/sh

yum update -y
amazon-linux-extras install docker ansible2
usermod -a -G docker ec2-user
service docker start
curl -L https://github.com/docker/compose/releases/download/1.23.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
wget https://concourse-ci.org/docker-compose.yml
docker-compose up
