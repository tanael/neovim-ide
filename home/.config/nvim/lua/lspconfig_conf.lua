-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require('lspconfig')
local servers = { 'bashls', 'ltex', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities,
  }
end

-- lua lspconfig
local nvim_data_path = os.getenv("HOME") .. "/.local/share/nvim/lsp_servers/"
nvim_lsp['sumneko_lua'].setup {
  cmd = {  nvim_data_path .. "sumneko_lua/extension/server/bin/Linux/lua-language-server" },
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
