# installed from a ppa repository
sudo apt install software-properties-common apt-transport-https -y
sudo add-apt-repository ppa:openjdk-r/ppa -y

# install Java
sudo apt install openjdk-8-jdk -y

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

# install nginx
sudo apt-get install nginx -y

# finally, restart the nginx service so the new config takes hold
sudo service nginx restart

cat /vagrant/access-key-jslave >> /home/vagrant/.ssh/authorized_keys

# install jenkins
# wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
# sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
#
# sudo apt update -y
# sudo apt install jenkins -y
#
# sudo systemctl start jenkins
# sudo systemctl enable jenkins
