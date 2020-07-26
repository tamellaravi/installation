sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
sudo apt-get maven -y
 

sudo adduser jenkins << ENDX
jenkins
jenkins
First Last




y
ENDX

sudo sh -c "echo \"jenkins ALL=(ALL:ALL) NOPASSWD: ALL\" >> /etc/sudoers"

sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
echo
echo
curl ifconfig.co
echo

