#!/bin/bash

# This script is not robust or good, just a hack. Future script will do better

user="hf4devops"
ansible_exitcode=0

sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible git vim

git config user.name "$user"
git config user.email "example@mail.com"
git set-url origin git@github.com:$user/toolbox

cd ansible

sudo ansible-playbook -i inventory/hf install_development_env.yaml
ansible_exitcode=$?

if [[ $ansible_exitcode -eq 0 ]]; then
	/usr/local/bin/set_gnome_favorites.sh
fi
