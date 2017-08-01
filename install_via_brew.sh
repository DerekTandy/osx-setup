#!/usr/bin/env bash

if ! type brew >/dev/null 2>&1; then 
  echo '^ installing brew'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
else
  echo '^ brew already installed'
fi

echo '^ installing ssh-copy-id'
brew install ssh-copy-id

echo '^ installing java'
brew cask install java

echo '^ installing iterm2'
brew cask install iterm2

echo '^ installing slack'
brew cask install slack

echo '^ installing postman'
brew cask install postman

echo '^ installing node'
brew install node

if ! type npm >/dev/null 2>&1; then
  npm update npm -g
else
  echo '^ not updating npm global, already there'
fi

echo '^ installing nvm'
brew install nvm

echo '^ installing nvalt'
brew cask install nvalt

echo '^ installing intellij idea'
brew cask install intellij-idea

echo '^ installing jq'
brew install jq

echo '^ installing httpie'
brew install httpie

echo '^ installing awscli'
brew install awscli

echo '^ installing atom'
brew cask install atom

echo '^ installing atom plugins'
apm install atom-beautify

echo '^ installing visual-studio-code'
brew cask install visual-studio-code

echo '^ installing code plugins'
code --install-extension christian-kohler.path-intellisense
code --install-extension formulahendry.code-runner
code --install-extension adamvoss.yaml

#echo '^ installing cfcli'
#brew cask install cloudfoundry-cli

#echo '^ installing docker-machine'
#brew cask install dockertoolbox

#echo '^ installing cakebrew'
#brew cask install cakebrew
