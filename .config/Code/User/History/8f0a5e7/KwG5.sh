#!/bin/bash

commands () {
echo "Howdy Pardner!";
}

export -f commands
konsole -e "bash -c 'commands'"