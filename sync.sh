#!/bin/bash

if [[ $1 == "backup" ]];
then
	rsync -ur ~/.config/nvim/ nvim
elif [[ $1 == "refresh" ]]; then
	rsync -ur nvim/ ~/.config/nvim
else
	echo "The first argument should be either backup to backup local files or refresh to bring in repository files."
fi

