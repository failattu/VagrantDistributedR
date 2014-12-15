#/bin/bash
sudo yum install -y epel-release
sudo yum install -y git
sudo yum install -y make gcc gcc-c+ protobuf libxml2-devel zeromq libaio
sudo yum install -y R
cd /vagrant
sudo rpm -Uvh vertica-distributedR-0.7.0-0.1.el6.x86_64.rpm
su vagrant
cd $HOME
ssh-keygen -t rsa -f vagrant
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
ssh -oStrictHostKeyChecking=no vagrant@127.0.0.1
