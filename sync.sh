#!/bin/bash

if [[ $1 == "backup" ]];
then
    case $2 in

	nvim)
	    rsync -ur ~/.config/nvim/ nvim
	    ;;
	bash)
	    rsync -ur ~/.bash_aliases .
	    ;;
	*)
	    echo -n "The second argument needs to specify the configuration files to back up."
	    ;;
    esac
elif [[ $1 == "refresh" ]]; then
    case $2 in

	nvim)
	    rsync -ur nvim/ ~/.config/nvim
	    ;;
	bash)
	    rsync -ur .bash_aliases ~
	    ;;
	*)
	    echo -n "The second argument needs to specify the configuration files to refresh."
	    ;;
    esac
else
	echo "The first argument should be either backup to backup local files or refresh to bring in repository files."
fi

