#! /bin/sh
ssh  -o StrictHostKeyChecking=no -i ssh_file ec2-user@172.20.20.75 'docker run amiedeep2/amiedeep:latest'