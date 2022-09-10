until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 1
done
sudo yum install git -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo yum install java -y
sudo yum install java-devel -y
export JAVA_HOME=(/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.322.b06-2.el8_5.x86_64/jre)
sudo yum install openssh-server
mkdir ~/jenkins