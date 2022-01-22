vim.cmd([[
  augroup lua
      autocmd!
      autocmd FileType lua setlocal tabstop=8 expandtab shiftwidth=2 softtabstop=2
  augroup end
  augroup markdown
      autocmd!
      autocmd FileType markdown setlocal tabstop=8 expandtab shiftwidth=2 softtabstop=2
  augroup end
  augroup toml
      autocmd!
      autocmd FileType toml setlocal tabstop=8 expandtab shiftwidth=2 softtabstop=2
  augroup end
]])
