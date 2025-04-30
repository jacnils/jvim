#!/bin/sh

if [ -e "$HOME/.config/nvim" ]; then
    rm -rf .config
    mkdir -p .config
    cp -r $HOME/.config/nvim .config/
    rm -f .config/nvim/.session.nvim
    mv .config/nvim/lazy-lock.json .config/nvim/.lazy-lock.json

    git add .config commit.sh install.sh
    git commit -a -m "jvim | Add new config"
    git push
fi
