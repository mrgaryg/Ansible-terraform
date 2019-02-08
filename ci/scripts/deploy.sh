#! /bin/sh
ssh  -o StrictHostKeyChecking=no -i "${1}" ec2-user@172.20.20.75 'docker run amiedeep2/amiedeep:latest'