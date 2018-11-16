#!/usr/bin/env bash

echo "Setting up..."

############ Invoke Ansible ############
echo Refreshing Ansible Galaxy...
ansible-galaxy install -f -r requirements.yml
echo Invoking Ansible...
ansible-playbook -i inventory.yml setup.yml # --ask-become-pass

echo "Setup complete..."
