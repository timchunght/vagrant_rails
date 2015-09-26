###Setup your Rails Environment with Postgres and Redis Using Vagrant in less than 10 minutes
---

clone this project and ``cd`` into it:

	git clone https://github.com/timchunght/vagrant_rails
	cd vagrant_rails
	vagrant up

Wait for installation to finish, and run:

	vagrant ssh

You are now inside the VM (ubuntu 14.04)

	cd projects

Great, your environment is now setup.

Please DO NOT change the folder name of ``projects`` and make sure all your rails projects are inside the ``projects`` directory. This way, all changes made using your local machine will be synced inside the VM. This means that you can use your favourite editor to edit files on your host machine and have them reflected instantly inside the VM.

Enjoy :)! 
