#! /bin/bash
if ! command -v inspec &> /dev/null
then
  echo "Installing InSpec into the Environment"
  curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P inspec
  exit
fi

docker-compose -f docker-compose.yml up -d

export CHEF_LICENSE=accept
