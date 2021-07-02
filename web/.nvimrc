echom "Hello, this is a js/web rc file"
echom expand("%:p")
echom "ಠᴗಠ"

augroup javascript
    autocmd!
    autocmd FileType javascript setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
augroup END

augroup css
    autocmd!
    autocmd FileType css setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
augroup END

augroup html
    autocmd!
    autocmd FileType html setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
augroup END
