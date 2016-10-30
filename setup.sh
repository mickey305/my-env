#!/bin/sh

TAG204231="setup.sh"

CURRENT_PATH=`cd $(dirname $0); pwd`
export LOGFILE="$HOME/$(date '+%Y%m%d[%T]')setup.log"
GIT_HOST=github.com
GIT_HOST_USER=git
GIT_USER=mickey305
GIT_SSH_REMOTE=$GIT_HOST_USER@$GIT_HOST:$GIT_USER
GIT_HTTP_REMOTE=$GIT_HOST/$GIT_USER

source $CURRENT_PATH/functions.sh

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

reload-env
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

reload-env
#-------------------------------------------------------------------------------

unset LOGFILE
