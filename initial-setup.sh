#! /bin/bash

curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P inspec

docker run -it --rm -d --name my-ubi8 redhat/ubi8

docker run -it --rm -d --name my-nginx  nginx

