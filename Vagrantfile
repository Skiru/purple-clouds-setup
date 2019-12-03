# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.ssh.forward_agent = true

  config.vm.provider "virtual_box" do |vb|
      vb.customize ["modifyvm", "id", "--natdnshostresolver1", "on"]
      vb.customize ["modifyvm", "id", "--memory", "2048"]
      vb.customize ["modifyvm", "id", "--cpus", "2"]
      vb.customize ["modifyvm", "id", "--cpuexecutioncap", "80"]
      vb.customize ["modifyvm", "id", "--name", "ecorp"]
  end

  # added dynamic swap file management to prevent "Free Swap Space: 0 B" warning in Jenkins
  config.vm.provision :shell, inline: 'apt-get install swapspace -y'
  config.vm.provision "shell", path: "./ansible/ansible.sh"

  config.vm.synced_folder ".", "/vagrant",
   type: "nfs",
   nfs_version: 3,
   nfs_udp: false
end
