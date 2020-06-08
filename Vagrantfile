# -*- mode: ruby -*-
# vi: set ft=ruby :

vm_conf = JSON.parse({
  memory: 1024,
  cpus: 1,
}.to_json)

vm_conf_path = "#{ File.expand_path File.dirname(__FILE__) }/vagrant.json"

Vagrant.configure("2") do |config|
  config.vm.box_check_update = false

  if (File.exist?(vm_conf_path))
    conf_file = File.read(vm_conf_path)
    vm_conf = vm_conf.merge(JSON.parse(conf_file))
  end

  config.vm.define "centbox", primary: true do |conf|
    conf.vm.box = "bento/centos-7"
    conf.vm.box_version = "202005.21.0"

    conf.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = vm_conf["memory"]
      v.cpus = vm_conf["cpus"]
    end
  end
end
