#!/bin/bash
### Install ruby & bundler

echo "====================Setting up Ruby Start===================="

# shellcheck source=/dev/null
source ~/.rvm/scripts/rvm
echo "Installing ruby-2.5.1"
rvm install 2.5.1
rvm --default use 2.5.1
gem install bundler

echo "=====================Setting up Ruby End-===================="
