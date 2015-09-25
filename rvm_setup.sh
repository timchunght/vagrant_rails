# Install RVM

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails

# Install Ruby

rvm install 2.1.1
rvm use 2.1.1 --default
gem install bundler
