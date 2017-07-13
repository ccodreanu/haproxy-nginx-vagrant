# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :lb do |lbconfig|
    lbconfig.vm.box = "ubuntu/xenial64"
    lbconfig.vm.hostname = "lb"
    lbconfig.vm.network "private_network", ip: "10.0.0.100"
    lbconfig.vm.network "public_network"

    lbconfig.vm.provider "virtualbox" do |vb|
      vb.memory = 512
    end

    lbconfig.vm.provision :shell, path: "bootstrap-lb.sh"
  end
end
