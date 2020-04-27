# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "debian/stretch64"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.network "forwarded_port", guest: 80, host: 8888
    config.ssh.forward_agent = true

    config.vm.provider "virtual_box" do |vb|
    vb.name = "purpleclouds"
    vb.memory = 2048
    vb.cpus = 2
    end

    # added dynamic swap file management to prevent "Free Swap Space: 0 B" warning in Jenkins
    config.vm.provision :shell, inline: 'apt-get install swapspace -y'
    config.vm.provision "shell", path: "./ansible/ansible.sh"

    # Linux
#      config.vm.synced_folder ".", "/vagrant",
#      type: "nfs",
#      nfs_version: 4,
#      nfs_udp: false

    # Mac
    config.vm.synced_folder ".", "/vagrant",
    type: "nfs"
end
