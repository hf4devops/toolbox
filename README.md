# toolbox

[![Build Status](https://travis-ci.org/hf4devops/toolbox.svg?branch=master)](https://travis-ci.org/hf4devops/toolbox)

My personal desktop automation for Ubuntu 18.04.
Travis build on Ubuntu 16 with some minor hacks to get the same results.

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