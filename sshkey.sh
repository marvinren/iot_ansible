#!/bin/sh
cp ./config/sshconfig ~/.ssh/config
ansible-playbook -i hosts ssh-addkey.yml
