# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  
  # config.vm.box = "CentOS-Dev-6.4"
  # config.vm.box_url = "https://dl.dropboxusercontent.com/sh/qo7bbnb0bc9i2r0/9mEibiIxx1/CentOS6.4.box?dl=1"
  
  config.vm.box = "CentOS-Dev-6.5"
  config.vm.box_url = "https://dl.dropboxusercontent.com/s/v8s0j00cxjyanxl/CentOS6.5.box?dl=1"

  # Boot with a GUI so you can see the screen. (Default is headless)
  #config.vm.boot_mode = :gui

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :hostonly, "192.168.33.10"

  config.vm.host_name = "dev.local"

  # Assign this VM to a bridged network, allowing you to connect directly to a
  # network using the host's network device. This makes the VM appear as another
  # physical device on your network.
  # config.vm.network :bridged

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  config.vm.forward_port 80, 8888

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  config.vm.share_folder "v-www", "/webroot", "./webroot"
  config.vm.share_folder "v-data", "/data", "./data"

  config.vm.provision :puppet,
    :options => ["--fileserverconfig=fileserver.conf"],
    :facter => { "fqdn" => "vagrant.vagrantup.com" }  do |puppet|
       puppet.manifests_path = "manifests"
       puppet.manifest_file = "vagrant.pp"
       puppet.module_path = "modules"
  end

end
