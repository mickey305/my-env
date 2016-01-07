#!/bin/sh

HOMEBREW_CMD=`which brew`
CURRENT_PATH=`cd $(dirname $0); pwd`
YAML_DATA_PATH=$CURRENT_PATH/brewlist.yml

repos=`ruby -ryaml -e "puts YAML.load(open('$YAML_DATA_PATH').read)['repositories']"`
formulas=`ruby -ryaml -e "puts YAML.load(open('$YAML_DATA_PATH').read)['formulas']"`
casks=`ruby -ryaml -e "puts YAML.load(open('$YAML_DATA_PATH').read)['casks']"`

##### HOMEBREW SETUP TASK #####
$HOMEBREW_CMD update
$HOMEBREW_CMD upgrade

#PRE_IFS=$IFS
#IFS=$'\n'

for element in ${repos[@]}; do
  $HOMEBREW_CMD tap $element || true
done
for element in ${formulas[@]}; do
  $HOMEBREW_CMD install $element
done
for element in ${casks[@]}; do
  $HOMEBREW_CMD cask install $element
done

#IFS=$PRE_IFS

$HOMEBREW_CMD cask cleanup
$HOMEBREW_CMD cleanup
$HOMEBREW_CMD linkapps
