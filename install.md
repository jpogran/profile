# https://jackwarren.info/blog/zsh


# wsl install

# wsl setup

```bash
vi /etc/wsl.conf
[automount]
options = "metadata,umask=22,fmask=111"
```
wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
sudo dpkg -i puppet6-release-bionic.deb

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install -y pdk git zsh build-essential libreadline-dev libssl-dev zlib1g-dev

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# follow instructions
cp /mnt/c/Users/james/src/jpogran/profile/zsh/zshrc ~/.zshrc

# https://medium.com/@hleclerc/use-rbenv-ruby-on-windows-10-linux-wsl-a9bce8d97300
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rkh/rbenv-whatis.git ~/.rbenv/plugins/rbenv-whatis
git clone https://github.com/rkh/rbenv-use.git ~/.rbenv/plugins/rbenv-use
cd ~/.rbenv && src/configure && make -C src
rbenv install 2.5.5
rbenv rehash


https://nickymeuleman.netlify.com/blog/linux-on-windows-wsl2-zsh-docker
https://github.com/nodenv/nodenv#how-nodenv-hooks-into-your-shell
https://gist.github.com/micahgodbolt/8b9a338c8bab7bc147975646ea20826c
