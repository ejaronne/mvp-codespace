#! /bin/bash

echo "Setting up your InSpec Developers Environment"

echo "Checking if InSpec is Installed"
if ! command -v inspec &> /dev/null
then
  echo "Installing InSpec into the Environment"
  curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P inspec
else
  echo "InSpec is here"
fi

echo "Settup up your testing targets"
docker-compose -f ./bootstrap/docker-compose.yml up -d

echo "Getting your Enviroment Variables Setup..."
.  ./bootstrp/env-vars;

echo "Happy InSpec'ing... :)"
