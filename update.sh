#!/usr/bin/env bash

function log {
    echo -e "[$(date +'%Y-%m-%d_%H:%M')]: $*"
}

log 'updating brew'
brew update

log 'upgrading brew'
brew upgrade

log 'doctoring brew'
brew doctor

log 'cleaning brew'
brew cleanup

