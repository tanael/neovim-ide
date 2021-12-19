-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require('lspconfig')
local servers = { 'bashls', 'ltex', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities,
  }
end

local nvim_data_path = os.getenv("HOME") .. "/.local/share/nvim/lsp_servers/"
-- lua lspconfig
nvim_lsp['sumneko_lua'].setup {
  cmd = {  nvim_data_path .. "sumneko_lua/extension/server/bin/lua-language-server" },
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
  cmd = {  nvim_data_path .. "ltex/ltex-ls-15.2.0/bin/ltex-ls" }
}


-- python
nvim_lsp['pylsp'].setup {
  cmd = { 'pylsp' } -- install python3-pylsp-mypy
}
