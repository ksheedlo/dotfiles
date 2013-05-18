#!/bin/bash

set -e

# Get the administrator password upfront and hang on to it
sudo -v

# Keep-alive for sudo
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Optional dependencies for Powerline
pip install pygit2
pip install Mercurial
pip install psutil

# CoVim depends on Twisted
pip install twisted
