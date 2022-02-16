#!/usr/bin/sh

cp -r ~/.config/nvim nvim
cp ~/.zshrc ~/.myzshrc zsh
cp ~/.tmux.conf tmux

git add .
git commit -m "update"
git push
