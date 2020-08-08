# neovim-ide

Neovim setup as an IDE, for use on Debian.

Relies on `vim-plug` and `ncm2`.

## Install

This will install `neovim` with helpful dependencies not automatically pulled.

```bash
./install.sh
```

The rest of the configuration is pulled from my legacy `init.vim`.

## Manage

As `nvim` commands:

```vim
" install plugins, after adding entry in run-control file
:PlugInstall
" update plugins
:PlugUpdate
" remove plugins, after remove entry from run-control file
:PlugClean
" update vim-plug
:PlugUpgrade
```
