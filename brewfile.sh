#!/bin/sh

cmd=`which brew`

##### HOMEBREW SETUP TASK #####
$cmd update
$cmd upgrade

### repository ###
$cmd tap homebrew/science || true
$cmd tap homebrew/dupes || true
$cmd tap homebrew/apache || true
$cmd tap caskroom/cask || true
$cmd tap caskroom/versions || true
$cmd tap josegonzalez/homebrew-php || true
# require rcm tools
$cmd tap thoughtbot/formulae || true

### formula ###
# zsh commands
$cmd install zsh
$cmd install zsh-completions
$cmd install coreutils
# utils
$cmd install rcm
$cmd install wget
$cmd install openssl
$cmd install jq
$cmd install mercurial
$cmd install rename
$cmd install freetype
$cmd install peco
$cmd install graphviz
$cmd install trash
$cmd install gist
$cmd install git
$cmd install git-flow
$cmd install nmap
$cmd install p7zip
$cmd install pkg-config
# sdk relations
$cmd install android-sdk
# development component
$cmd install pyenv-virtualenv
$cmd install plenv
$cmd install perl-build
$cmd install rbenv
$cmd install ruby-build
$cmd install readline
$cmd install phpenv
$cmd installv php-build
$cmd install nodebrew
$cmd install gcc
$cmd install go
$cmd install scala
$cmd install redis
$cmd install httpd24
$cmd install nginx
# databases
$cmd install sqlite
$cmd install mysql
$cmd install mongodb
# others
$cmd install xz
$cmd install tig
$cmd install libpng
$cmd install gdbm
$cmd install oniguruma
$cmd install pcre

### cask ###
$cmd cask install appcleaner
$cmd cask install iterm2
$cmd cask install dropbox
$cmd cask install skype
$cmd cask install vagrant
$cmd cask install virtualbox
$cmd cask install heroku-toolbelt
# web browser
$cmd cask install google-chrome
$cmd cask install firefox
# development tools
$cmd cask install sublime-text3
$cmd cask install atom
$cmd cask install android-studio
$cmd cask install eclipse-ide
$cmd cask install java
$cmd cask install java7
$cmd cask install dockertoolbox
$cmd cask install coteditor

$cmd cask cleanup
$cmd cleanup
$cmd linkapps
