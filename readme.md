DistributedR Vagrant
====================

This is a script that makes it possible for you to run DistributedR

### Requires:

	https://haven.hpwsportal.com/catalog.html#/Product/{"productId":"420"}/Show
	
	uzipped in the folder you use. 
	
	vagrant you can get it here:
	
	https://www.vagrantup.com/

	Script currently uses: vertica-distributedR-0.7.0-0.1.el6.x86_64.rpm
	
	Tested with Windows 7
	

### Usage: 
	
	Unzip the vertica installation RPM

	> vagrant init 
	
	> vagrant up

	For ssh you need to do the following in windows:
	
	SSH is located at 127.0.0.1 port 2222 if you aren't running other stuff in that port
	
	http://stackoverflow.com/questions/9885108/ssh-to-vagrant-box-in-windows
	
### Moving files

	You can move files trough git or trough SFTP 
	
	SFTP if this is the first computer is in 127.0.0.1 port 2222
	
	You can also use the vagrant folder to move files to /vagrant
	
### Installs DistributedR requirements:

	*epel-release
	*git
	*make 
	*gcc 
	*gcc-c+ 
	*protobuf 
	*libxml2-devel 
	*zeromq 
	*libaio
	*R
	*The DistributedR.rpm
	
### After the computer is ready run the following commands as vagrant user:

	>cd /home/vagrant/.ssh
	
	>ssh-keygen -t rsa
	
	>cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
	
	>ssh vagrant@127.0.0.1
	
	>exit

The computer is now ready to run distributedR. 

### To test run the following commands:

	>R
	
	>library(distributedR)
	
	>distributedR_start(inst=4)
	
	>distributedR_status()
	
	>distributedR_shutdown()
	
	>q()

### Some thanks:
	Vagrant and Hansode
	
	https://vagrantcloud.com/hansode/boxes/centos-6.6-x86_64
	
	HP for making DistributedR
