#!/bin/bash

REPO_PATH="$HOME/Documents/perso/feove_Dotfiles"
CONF_PATH="$HOME/.config/"

commands () {

    cp $CONF_PATH $REPO_PATH 
    echo "Files copied !";
}

commands