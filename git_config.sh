#!/bin/sh

#
# Setup:
# Run this file once
#

# Configure default branch name
git config --global init.defaultBranch main

# Configure common aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# Configure editor
git config --global core.editor vim

# Configure commit template
# TBD
