#!/usr/bin/sh

cp -r ~/.config/nvim nvim && echo "nvim done ..."

cp ~/.zshrc ~/.myzshrc zsh && echo "zsh done ..."

cp ~/.tmux.conf tmux && echo "tmux done..."

git add .
git commit -m "update"
git push
