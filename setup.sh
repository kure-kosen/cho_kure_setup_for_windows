sudo apt update
sudo apt install -y software-properties-common
sudo apt install -y build-essential

sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install -y git

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$HOME/.rbenv/bin/rbenv init

mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

rbenv install 2.4.2
rbenv global 2.4.2
gem install bundler

sudo curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt update
sudo apt install nodejs

sudo apt install mysql-server
