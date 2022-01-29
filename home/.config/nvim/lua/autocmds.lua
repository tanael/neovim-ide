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
  augroup web
      autocmd!
      autocmd FileType html setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
      autocmd FileType css setlocal tabstop=8 expandtab shiftwidth=2 softtabstop=2
      autocmd FileType scss setlocal tabstop=8 expandtab shiftwidth=2 softtabstop=2
  augroup end
  augroup end
]])
