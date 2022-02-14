#! /bin/bash

# TODO - Setup a shared data space for the student to put JSON files

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

# TODO - fix setting the CHEF_LICENSE accept in the env
# TODO - this will go away if we use cinc-auditor

echo "Happy InSpec'ing... :)"
