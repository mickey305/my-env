#!/bin/sh

CURRENT_PATH=`cd $(dirname $0); pwd`
GIT_REMOTE=git@github.com:mickey305

cd $HOME
git clone $GIT_REMOTE/dotfiles-local.git
git clone $GIT_REMOTE/dotfiles.git
cd $CURRENT_PATH

chmod 700 $HOME/dotfiles
chmod 700 $HOME/dotfiles-local
chmod 700 $HOME/my-env

# rcm
# set dotfiles and dotfiles-local env
env RCRC=$HOME/dotfiles/rcrc rcup

# homebrew install
$CURRENT_PATH/brewfile.sh

# ruby relations
R_VERSION=2.2.3
rbenv install $R_VERSION
rbenv global $R_VERSION

gem update
gem install bundler
gem install rails --version="4.2.5"

# cancel execute flag of this file
chmod -x $CURRENT_PATH/`basename $0`
