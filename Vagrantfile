# -*- mode: ruby -*-
# vi: set ft=ruby :


VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.box       = "spec-rails"
  config.vm.box_url   = "https://s3.amazonaws.com/vm-box/spec-rails.box"

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.synced_folder "./projects", "/home/vagrant/projects"

end
