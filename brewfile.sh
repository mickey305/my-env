#!/bin/sh

CMD=`which brew`

##### HOMEBREW SETUP TASK #####
$CMD update
$CMD upgrade

### repository ###
$CMD tap homebrew/science || true
$CMD tap homebrew/dupes || true
$CMD tap homebrew/apache || true
$CMD tap caskroom/cask || true
$CMD tap caskroom/versions || true
$CMD tap josegonzalez/homebrew-php || true
# require rcm tools
$CMD tap thoughtbot/formulae || true

### formula ###
# zsh commands
$CMD install zsh
$CMD install zsh-completions
$CMD install coreutils
# utils
$CMD install rcm
$CMD install wget
$CMD install openssl
$CMD install jq
$CMD install mercurial
$CMD install rename
$CMD install freetype
$CMD install peco
$CMD install graphviz
$CMD install trash
$CMD install gist
$CMD install git
$CMD install git-flow
$CMD install nmap
$CMD install p7zip
$CMD install pkg-config
# sdk relations
$CMD install android-sdk
# development component
$CMD install pyenv-virtualenv
$CMD install plenv
$CMD install perl-build
$CMD install rbenv
$CMD install ruby-build
$CMD install readline
$CMD install phpenv
$CMD installv php-build
$CMD install nodebrew
$CMD install gcc
$CMD install go
$CMD install scala
$CMD install redis
$CMD install httpd24
$CMD install nginx
# databases
$CMD install sqlite
$CMD install mysql
$CMD install mongodb
# others
$CMD install xz
$CMD install tig
$CMD install libpng
$CMD install gdbm
$CMD install oniguruma
$CMD install pcre

### cask ###
$CMD cask install appcleaner
$CMD cask install iterm2
$CMD cask install dropbox
$CMD cask install skype
$CMD cask install vagrant
$CMD cask install virtualbox
$CMD cask install heroku-toolbelt
# web browser
$CMD cask install google-chrome
$CMD cask install firefox
# development tools
$CMD cask install sublime-text3
$CMD cask install atom
$CMD cask install android-studio
$CMD cask install eclipse-ide
$CMD cask install java
$CMD cask install java7
$CMD cask install dockertoolbox
$CMD cask install coteditor

$CMD cask cleanup
$CMD cleanup
$CMD linkapps
