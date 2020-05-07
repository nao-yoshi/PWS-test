# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "pws"
  config.vm.network "private_network", type: "dhcp" 
  config.vm.provider "virtualbox" do |vb|
    vb.name = config.vm.hostname
    vb.customize ['modifyvm', :id, '--cpus', 1]
    vb.customize ['modifyvm', :id, '--memory', 1024]
  end
  config.vm.provision :shell, path: "scripts/bootstrap.sh"
end
