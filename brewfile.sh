#!/bin/sh

BREW=brew

##### HOMEBREW SETUP TASK #####
$BREW update
$BREW upgrade

### repository ###
$BREW tap homebrew/science || true
$BREW tap homebrew/dupes || true
$BREW tap homebrew/apache || true
$BREW tap caskroom/cask || true
$BREW tap caskroom/versions || true
$BREW tap josegonzalez/homebrew-php || true
# require rcm tools
$BREW tap thoughtbot/formulae || true

### formula ###
# zsh commands
$BREW install zsh
$BREW install zsh-completions
$BREW install coreutils
# utils
$BREW install rcm
$BREW install wget
$BREW install openssl
$BREW install jq
$BREW install mercurial
$BREW install rename
$BREW install freetype
$BREW install peco
$BREW install graphviz
$BREW install trash
$BREW install gist
$BREW install git
$BREW install git-flow
$BREW install nmap
$BREW install p7zip
$BREW install pkg-config
# android relations
$BREW install android-sdk
$BREW install android-ndk
$BREW install ant
# development component
$BREW install pyenv-virtualenv
$BREW install plenv
$BREW install perl-build
$BREW install rbenv
$BREW install ruby-build
$BREW install readline
$BREW install phpenv
$BREW install php-build
$BREW install nodebrew
$BREW install gcc
$BREW install go
$BREW install scala
$BREW install redis
$BREW install httpd24
$BREW install nginx
$BREW install clisp
# databases
$BREW install sqlite
$BREW install mysql
$BREW install mongodb
# others
$BREW install xz
$BREW install tig
$BREW install libpng
$BREW install gdbm
$BREW install oniguruma
$BREW install pcre

### cask ###
$BREW cask install appcleaner
$BREW cask install iterm2
$BREW cask install dropbox
$BREW cask install skype
$BREW cask install vagrant
$BREW cask install virtualbox
$BREW cask install heroku-toolbelt
# web browser
$BREW cask install google-chrome
$BREW cask install firefox
# development tools
$BREW cask install sublime-text3
$BREW cask install atom
$BREW cask install android-studio
$BREW cask install eclipse-ide
$BREW cask install java
$BREW cask install java7
$BREW cask install dockertoolbox
$BREW cask install coteditor

$BREW cask cleanup
$BREW cleanup
$BREW linkapps
