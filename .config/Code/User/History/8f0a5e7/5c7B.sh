#!/bin/bash

REPO_PATH="$HOME/Documents/perso/feove_Dotfiles"
CONF_PATH="$HOME/.config/"

commands () {

    cp $CONF_PATH $REPO_PATH -r
    cd $REPO_PATH
    git add .
    git status
    git commit -m "Update Dotfiles" || echo "No changes to commit"
    git push
    echo "Files copied !";
}

commands
