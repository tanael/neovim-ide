echom "Hello, this is a hugo rc file"
echom expand("%:p")
echom "ಠᴗಠ"

augroup hugo
    autocmd!
    autocmd FileType html setlocal tabstop=8 expandtab shiftwidth=2 softtabstop=2
augroup END
