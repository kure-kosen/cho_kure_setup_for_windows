sudo apt update
sudo apt upgrade

sudo apt install -y software-properties-common build-essential libssl-dev libreadline-dev


sudo add-apt-repository ppa:git-core/ppa

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$HOME/.rbenv/bin/rbenv init
source $HOME/.bash_profile

mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

sudo curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
sudo sh -c "echo deb https://deb.nodesource.com/node_8.x zesty main \ > /etc/apt/sources.list.d/nodesource.list"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list


sudo apt update
sudo apt install -y git nodejs yarn mysql-server libmysqlclient-dev

rbenv install 2.4.2
rbenv global 2.4.2
gem install bundler

sudo apt update
sudo apt upgrade
