# Simple backup for configuration files

The `sync.sh` script will either backup changes to the repository or refresh the configuration files with the repository version.

The `vim-plug` script should be installed first if it is a fresh neovim installation.
From [their documentation][https://github.com/junegunn/vim-plug]:
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
