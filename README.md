# neovim-ide

:monkey:
Neovim setup as an IDE.

Relies on `savq/paq-nvim` and native neovim LSP.

## Install

This will install `neovim` with helpful dependencies not automatically pulled.

```bash
./install.sh
```

The rest of the configuration is pulled from my legacy `init.vim`.

## Manage plugins

As `nvim` commands:

```vim
" install plugins present in plugin configuration
:PaqInstall

" update plugins already installed
:PaqUpdate

" remove plugins no longer present in configuration
:PaqClean

" Execute all three operations listed above
:PaqSync
```
