#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Instance name required"
else
  ansible-playbook --flush-cache -i ./instances/$1/hosts -e @./instances/$1/admin-site/app.json --extra-vars="intake24_instance_name=$1" ansible/admin-site.yml
fi
