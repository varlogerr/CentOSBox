# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box_check_update = false

  config.vm.define "centbox", primary: true do |conf|
    conf.vm.box = "bento/centos-7"
    conf.vm.box_version = "202005.21.0"
  end

  conf.vm.provider "virtualbox" do |v|
    v.gui = false
    v.memory = 1024
    v.cpus = 1
  end
end
