#!/bin/bash

# This script is not robust or good, just a hack. Future script will do better

git_user="hf4devops"
system_user="hf"
ansible_exitcode=0

sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible git vim

git config user.name "$git_user"
git config user.email "no-reply"
git remote set-url origin git@github.com:$git_user/toolbox

cd ansible

sudo ansible-playbook -i inventory/$system_user install_development_env.yaml
ansible_exitcode=$?

if [[ $ansible_exitcode -eq 0 ]]; then
	/usr/local/bin/set_gnome_favorites.sh
fi