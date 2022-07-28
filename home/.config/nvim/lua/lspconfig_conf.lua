-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require('lspconfig')
local servers = { 'bashls', 'ltex', 'sumneko_lua', 'pylsp' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities,
  }
end

local nvim_data_path = os.getenv("HOME") .. "/.local/share/nvim/lsp_servers/"
-- lua lspconfig
nvim_lsp['sumneko_lua'].setup {
  cmd = {  nvim_data_path .. "sumneko_lua/extension/server/bin/lua-language-server" },
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}

-- latex & markdown lspconfig
nvim_lsp['ltex'].setup {
  cmd = {  nvim_data_path .. "ltex/ltex-ls/bin/ltex-ls" },
  capabilities = capabilities,
  settings = {
    ltex = {
      disabledRules = { ['en-US'] = { 'PROFANITY' } },
      dictionary = {
        ['en-US'] = { 'TODO', 'Treesitter' },
        ['fr'] = { 'Mutti' },
      },
      language = "en-US"
    },
  },
}


-- python
nvim_lsp['pylsp'].setup {
  cmd = { 'pylsp' }, -- install python3-pylsp-mypy
  capabilities = capabilities,
}

-- haskell
local util = require 'lspconfig.util'
nvim_lsp['hls'].setup{
  cmd = { "haskell-language-server-wrapper", "--lsp" },
  capabilities = capabilities,
  filetypes = { "haskell", "lhaskell" },
  root_dir = function (filepath)
      return (
        util.root_pattern('hie.yaml', 'stack.yaml', 'cabal.project')(filepath)
        or util.root_pattern('*.cabal', 'package.yaml')(filepath)
      )
    end,
  settings = {
    haskell = {
      formattingProvider = "ormolu"
    }
  },
  single_file_support = true
}
