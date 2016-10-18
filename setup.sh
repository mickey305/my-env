#!/bin/sh

CURRENT_PATH=`cd $(dirname $0); pwd`
GIT_HOST=github.com
GIT_HOST_USER=git
GIT_USER=mickey305

GIT_SSH_REMOTE=$GIT_HOST_USER@$GIT_HOST:$GIT_USER
GIT_HTTP_REMOTE=$GIT_HOST/$GIT_USER

cd $HOME
git clone $GIT_SSH_REMOTE/dotfiles-local.git
git clone $GIT_SSH_REMOTE/dotfiles.git
cd $CURRENT_PATH

chmod 700 $HOME/dotfiles
chmod 700 $HOME/dotfiles-local
chmod 700 $HOME/my-env

# rcm
# set dotfiles and dotfiles-local env
env RCRC=$HOME/dotfiles/rcrc rcup

# homebrew install
$CURRENT_PATH/brewfile.sh

reload
#-------------------------------------------------------------------------------

# ruby relations
R_VERSION=2.2.3
rbenv install $R_VERSION
rbenv global $R_VERSION

gem update
gem install bundler
gem install rails --version="4.2.5"

# Go init
mkdir $HOME/workspace
mkdir $HOME/workspace/golang

# jdkenv setting
go install $GIT_HTTP_REMOTE/jdkenv
jdkenv init

reload
#-------------------------------------------------------------------------------

# cancel execute flag of this file
chmod -x $CURRENT_PATH/`basename $0`

# local env file reload
reload() {
  source $HOME/.zshrc.local
}
