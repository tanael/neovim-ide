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
  augroup system
      autocmd!
      autocmd FileType rust setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
      autocmd FileType rust nnoremap <F2> :!cargo check<CR>
      autocmd FileType rust nnoremap <F3> :!cargo build<CR>
      autocmd FileType rust nnoremap <F4> :!cargo run<CR>
      autocmd FileType rust nnoremap <F5> :!cargo test<CR>
      autocmd FileType rust nnoremap <S-F1> :!cargo doc --open<CR>
      autocmd FileType rust nnoremap <S-F2> :RustFmt<CR>
      autocmd FileType rust nnoremap <S-F3> :!cargo fix<CR>
      autocmd FileType rust nnoremap <S-F4> :!cargo clippy<CR>
  augroup end
]])
