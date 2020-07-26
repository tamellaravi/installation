#!/bin/bash
sudo apt update 
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y 

sudo adduser ansible << ENDX
ansible
ansible
First Last




Y
ENDX

sudo sh -c "echo \"ansible ALL=(ALL:ALL) NOPASSWD: ALL\" >> /etc/sudoers"

sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo service sshd restart
sudo su ansible
ansible 
