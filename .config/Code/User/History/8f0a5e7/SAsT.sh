#!/bin/bash

REPO_PATH="Documents/perso/feove_Dotfiles"
CONF_PATH="~/.conf"

commands () {

    cp $CONF_PATH $REPO_PATH 
    echo "Files copied !";
}

commands