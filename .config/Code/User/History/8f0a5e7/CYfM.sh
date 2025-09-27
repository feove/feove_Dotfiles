#!/bin/bash

REPO_PATH="Documents/perso/feove_Dotfiles"
CONF_PATH="~/.config"

commands () {

    cp $CONF_PATH $REPO_PATH 
    echo "Files copied !";
}

commands