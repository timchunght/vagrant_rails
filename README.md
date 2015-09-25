clone this directory and cd into it

  git clone repo_url
  cd vagrant_rails
  vagrant up

Wait for installation to finish, and run:

	vagrant ssh

You are now inside the VM (ubuntu 14.04), time to install ``rvm``, the ruby version manager.

	cd projects
	sudo sh rvm_setup.sh

This script will install ``rvm`` and ``ruby-2.1.1`` as default

Great, your environment is now setup.

Please DO NOT change the folder name of ``projects`` and make sure all your rails projects are inside the ``projects`` directory. This way, all changes made using your local machine will be synced inside the VM. This means that you can use your favourite editor to edit files and have them reflected instantly in the VM.

Enjoy :)! 
