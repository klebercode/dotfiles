#!/usr/bin/env bash

sed -i'.bak' 's/background_opacity:[^?]*/background_opacity: '"$1"'/g' ~/Workspace/code/dotfiles/config/alacritty.yml
