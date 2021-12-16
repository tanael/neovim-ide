# `neovim` as an IDE

:monkey:
`neovim` setup as an IDE.

Relies on:
  * `wbthomason/packer.nvim` to manage plugins
  * `williamboman/nvim-lsp-installer` to manage LSP servers

## Install

This will install `neovim` with helpful dependencies not automatically pulled.

```bash
./install.sh
```

`init.lua` contains import path to different specialised configuration files.


## Manage plugins with `packer.vim`

As `nvim` commands:

```vim
"" You must run this or `PackerSync` whenever you make changes to your plugin configuration
"" Regenerate compiled loader file
:PackerCompile

"" Remove any disabled or unused plugins
:PackerClean

"" Clean, then install missing plugins
:PackerInstall

"" Clean, then update and install plugins
:PackerUpdate

"" Perform `PackerUpdate` and then `PackerCompile`
:PackerSync
```

## Manage LSP servers with `nvim-lsp-installer`

As `nvim` commands:

```vim
:LspInstall
```

Depending on the `filetype` used in the current buffer, you will be given a choice
of servers to install.

Make sure to configure `lspconfig` properly first by indicating the path to the
server's binary file, if it is not present in your path:

```lua
local nvim_data_path = os.getenv("HOME") .. "/.local/share/nvim/lsp_servers/"
require('lspconfig')['ltex'].setup {
  cmd = {  nvim_data_path .. "ltex/ltex-ls-15.2.0/bin/ltex-ls" }
}
```
