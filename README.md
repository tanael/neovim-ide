# Neovim as an IDE

:monkey:
Neovim setup as an IDE.

Relies on `wbthomason/packer.nvim` and native neovim LSP.

## Install

This will install `neovim` with helpful dependencies not automatically pulled.

```bash
./install.sh
```

The rest of the configuration is pulled from my legacy `init.vim`.

## Manage plugins

As `nvim` commands:

```vim
-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
-- Regenerate compiled loader file
:PackerCompile

-- Remove any disabled or unused plugins
:PackerClean

-- Clean, then install missing plugins
:PackerInstall

-- Clean, then update and install plugins
:PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
:PackerSync
```
