#!/bin/bash

TAG204108="functions.sh"

function log() {
	if [ $# -eq 2 ] && [ "$LOGFILE" ]; then
		local tag=$1
		local msg=$2
		local outfile=$LOGFILE
		echo "$(date '+%Y-%m-%d %T') - [$tag] \"$msg\"" | tee >(cat 1>>$outfile 2>&1) | cat
	fi
}

function reload-env() {
  source $HOME/.zshrc.local
}
