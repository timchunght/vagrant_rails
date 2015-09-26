# -*- mode: ruby -*-
# vi: set ft=ruby :


VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.box       = "spec-rails"
  config.vm.box_url   = "https://www.dropbox.com/s/ur9nfpa83qy9gqq/spec-rails.box?dl=1"

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.synced_folder "./projects", "/home/vagrant/projects"

end
