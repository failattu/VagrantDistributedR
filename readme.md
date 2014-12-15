This is a script that makes it possible for you to run DistributedR

Requires:
https://haven.hpwsportal.com/catalog.html#/Product/{"productId":"420"}/Show
uzipped in the folder you use.
vagrant you can get it here:
https://www.vagrantup.com/
Script currently uses: vertica-distributedR-0.7.0-0.1.el6.x86_64.rpm
Tested with Windows 7

Usage: 
Unzip the vertica installation RPM

> vagrant init 
> vagrant up

For ssh you need to do the following in windows:

http://stackoverflow.com/questions/9885108/ssh-to-vagrant-box-in-windows

Installs DistributedR requirements:
epel-release
git
make 
gcc 
gcc-c+ 
protobuf 
libxml2-devel 
zeromq 
libaio
R
The DistributedR.rpm
passwordless ssh for localhost

The computer is now ready to run distributedR. 

To test run the following commands:
R
library(distributedR)
distributedR_start(inst=4)
distributedR_status()
distributedR_shutdown()

Some thanks:
Vagrant and Hansode
https://vagrantcloud.com/hansode/boxes/centos-6.6-x86_64
HP for making DistributedR
