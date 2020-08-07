sudo apt-get update 
sudo apt-get install openjdk-8-jdk -y
sudo wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz
tar -xvf apache-tomcat-8.5.57.tar.gz
sh apache-tomcat-8.5.57/bin/startup.sh
cd ~
echo "<?xml version='1.0' encoding='utf-8'?>
<tomcat-users>
  <role rolename="manager-gui"/>
  <user username="tomcat" password="Tomcat" roles="manager-gui, manager-script, manager-script, manager-status"/>
</tomcat-users>" > apache-tomcat-8.5.57/conf/tomcat-users.xml
echo "done"
cd ~
sleep 5s
#sudo vi apache-tomcat-8.5.57/webapps/host-manager/META-INF/context.xml
#sudo vi apache-tomcat-8.5.57/webapps/manager/META-INF/context.xml
#for both delete the below text
"<Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />"
#sh apache-tomcat-8.5.57/bin/shutdown.sh
#sh apache-tomcat-8.5.57/bin/startup.sh

