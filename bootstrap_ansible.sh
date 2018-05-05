#!/bin/bash

git_user="hf4devops"
git_email="changeme@example.com"
system_user="hf"
ansible_exitcode=0

git config user.name "$git_user"
git config user.email "$git_email"
git remote set-url origin git@github.com:$git_user/toolbox

cd ansible

sudo ansible-playbook -i inventory/$system_user install_development_env.yaml
ansible_exitcode=$?

if [[ $ansible_exitcode -eq 0 ]]; then
	/usr/local/bin/set_gnome_favorites.sh
fi
