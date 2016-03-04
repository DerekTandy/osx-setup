#!/usr/bin/env bash

echo '^ installing cf_completion'
sudo gem install cf_completion
echo "complete -C cf_completion cf" >> ~/.bash_profile
source ~/.bash_profile
