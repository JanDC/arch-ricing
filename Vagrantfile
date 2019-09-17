# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.provision :shell, :inline => "/vagrant/run.sh"

  config.vm.provider "virtualbox" do |v|
        # show a display for easy debugging
        v.gui = true

        # RAM size
        v.memory = 5048
        v.cpus = 2

        # Allow symlinks on the shared folder
        v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end


  config.vm.synced_folder ".", "/vagrant", type: "nfs", mount_options: ['rw', 'vers=3', 'tcp', 'fsc', 'nolock', 'actimeo=2']
  config.vm.network "private_network", ip: "192.168.33.100"
  config.ssh.forward_agent = true

end
