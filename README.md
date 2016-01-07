# my env
## Note
### Mac OS X
```
# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# git
brew install git; cd ~; git clone git@github.com:mickey305/my-env.git

# use zsh
brew install zsh; sudo sh -c "echo 'usr/local/bin/zsh' >> /etc/shells"; chsh -s $(which zsh)

# execute shellscript
cd ~/my-env; ./setup.sh
```

### Linux
#### Debian系(Debian, Ubuntu etc.)
```
sudo apt-get install gettext
sudo apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
```

#### RHEL系(CentOS, Red Hat, Fedora etc.)
```
sudo yum install openssl-devel
sudo yum groupinstall 'Development Tools' && sudo yum install curl git irb m4 ruby texinfo bzip2-devel curl-devel expat-devel ncurses-devel zlib-devel
```
* [CentOS6 gcc symlink info URL][centos6_gcc]

#### Setup command
```
# linuxbrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

# git
brew install git; cd~; git clone git@github.com:mickey305/my-env.git

# use zsh
brew install zsh; sudo sh -c `echo "$HOME/.linuxbrew/bin/zsh" >> /etc/shells`; chsh -s $(which zsh)

# execute shellscript
cd ~/my-env; ./setup.sh
```

## Links
* [Homebrew(jpn)][homebrew]
* [Linuxbrew(en)][linuxbrew]

[homebrew]: http://brew.sh/index_ja.html
[linuxbrew]: http://brew.sh/linuxbrew/
[centos6_gcc]: http://qiita.com/thermes/items/1ecb0968ab937ff59164
