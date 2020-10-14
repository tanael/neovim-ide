echom "Hello, this is a rust rc file"
echom expand("%:p")
echom "ಠᴗಠ"

let g:rustfmt_autosave = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\}
let g:ale_linters = { 'rust': ['rls'], }
" let g:ale_fix_on_save = 1
" let g:ale_completion_enabled = 1
noremap <F9> :TagbarToggle<CR>
noremap <F2> :!cargo run<CR>
noremap <F3> :!cargo build<CR>

augroup rust
    autocmd!
    autocmd FileType rust setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
augroup END
