# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hansode/centos-6.6-x86_64"
  config.vm.provision "shell" do |s|
   s.path = "deploy.sh"
   s.privileged = false
  end
end
