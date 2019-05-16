# toolbox

My personal desktop automation for Ubuntu 19.04 codename Disco.

It installs and configures all my needed desktop application via Ansible.

Please change the user variables in the the bootstrap_ansible.sh

After a fresh Ubuntu installation use:
```
sudo apt install git
mkdir development
cd development
git clone git@github.com:hf4devops/toolbox.git
cd toolbox
./bootstrap_ansible.sh
```


More functionality will be added over time.