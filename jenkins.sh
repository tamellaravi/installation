sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins 

sudo passwd jenkins << ENDX
jenkins
jenkins

ENDX

sudo sh -c "echo \"jenkins ALL=(ALL:ALL) NOPASSWD: ALL\" >> /etc/sudoers"

sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
echo
echo " finding jenkins password "
echo 
echo
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo
curl ifconfig.co
echo
