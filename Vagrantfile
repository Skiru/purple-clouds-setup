# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "bento/debian-10"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.network "forwarded_port", guest: 80, host: 8000
    config.ssh.forward_agent = true

    config.vm.provider "virtual_box" do |vb|
    vb.name = "purpleclouds"
    vb.memory = 8096
    vb.cpus = 2
    end

    # added dynamic swap file management to prevent "Free Swap Space: 0 B" warning in Jenkins
    config.vm.provision :shell, inline: 'apt-get install swapspace -y'
    config.vm.provision "shell", path: "./ansible/ansible.sh"

     # Use vagrant-bindfs to re-mount folder
     config.bindfs.bind_folder "/home/mkoziol/Work/purple-clouds-setup", "/vagrant"

    # Linux
    # config.vm.synced_folder ".", "/vagrant", create: true, type: :nfs, :mount_options => ['nolock,vers=3,tcp,noatime,clientaddr=192.168.33.10']

    # Mac
    #config.vm.synced_folder ".", "/vagrant",
    #type: "nfs"
end
