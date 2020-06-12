# -*- mode: ruby -*-
# vi: set ft=ruby :

vm_conf = JSON.parse({
  memory: 1024,
  cpus: 1,
  ip: "192.168.96.69",
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
    conf.vm.hostname = "Cent7Box"
    conf.vm.network "private_network", ip: vm_conf["ip"]

    conf.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = vm_conf["memory"]
      v.cpus = vm_conf["cpus"]
    end

    # configure vagrant synced directory
    conf.vm.synced_folder ".",
      "/vagrant",
      mount_options: ["dmode=0775", "fmode=0664"]

    conf.vm.provision "shell", privileged: true, inline: <<-SHELL
      yum install -y epel-release
      yum install -y ansible
    SHELL

    conf.vm.provision "shell", privileged: false, inline: <<-SHELL
      cd /vagrant/resources/ansible
      ansible-playbook playbook.yml
    SHELL
  end
end
