#!/bin/bash
sudo yum update -y
sudo yum install software-properties-common -y
sudo yum-add-repository --yes --update ppa:ansible/ansible
sudo yum install python -y


sudo adduser ansible << ENDX
sudo passwd ansible
ansible
First Last




Y
ENDX
sudo sh -c "echo \"ansible ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers"

sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo service sshd restart
sudo su ansible
ansible






