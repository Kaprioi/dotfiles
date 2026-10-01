#!/usr/bin/env bash
set -e

cd ~/.dotfiles
git add .
sudo darwin-rebuild switch --flake ~/.dotfiles#$(scutil --get LocalHostName)
