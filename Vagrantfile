# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
set -e
set -x

cd
sudo apt-get update -y
sudo apt-get install \
  git-core \
  curl \
  wget \
  zlib1g-dev\
  build-essential\
  libssl-dev\
  libreadline-dev\
  libyaml-dev\
  libsqlite3-dev\
  sqlite3\
  libxml2-dev\
  libxslt1-dev\
  libcurl4-openssl-dev\
  python-software-properties \
  -y 2> /dev/null

# install Postgres
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install postgresql-common postgresql-9.3 libpq-dev -y 2> /dev/null

# create Postgres User
sudo -u postgres createuser vagrant -s

# Set super unsafe defaultz (dev only)
sudo sh -c "echo 'local all all trust\nhost all all 127.0.0.1/32 trust\nhost all all ::1/128 trust' > /etc/postgresql/9.3/main/pg_hba.conf "
sudo /etc/init.d/postgresql reload

# install node (the rails asset pipeline need it)
sudo add-apt-repository ppa:chris-lea/node.js -y
sudo apt-get update -y
sudo apt-get install nodejs -y


# Install Redis
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
sudo cp src/redis-server /usr/local/bin/
sudo cp src/redis-cli /usr/local/bin/
sudo rm -rf /home/vagrant/redis*

SCRIPT

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  #config.vm.provider "virtualbox" do |v|
  # 	v.gui = true
  # end

  # config.vbguest.auto_update = false
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  #if Dir.glob("#{File.dirname(__FILE__)}/.vagrant/machines/default/*/id/*").empty?
    config.vm.provision :shell, inline: $script, privileged: false
  #end

  config.vm.synced_folder "./projects", "/home/vagrant/projects"

end
