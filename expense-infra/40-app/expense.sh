#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/jagadish7-25/ansi-exp
cd ansi-exp
ansible-playbook -i inventory.ini mysql.yaml
ansible-playbook -i inventory.ini backend.yaml
ansible-playbook -i inventory.ini frontend.yaml