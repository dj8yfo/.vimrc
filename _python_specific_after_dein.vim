augroup abbrevs
    autocmd FileType python :iabbrev <buffer> ret return
    autocmd FileType python :iabbrev <buffer> true True
    autocmd FileType python :iabbrev <buffer> false False
    autocmd FileType python :iabbrev <buffer> return NOPENOPENOPE
    autocmd FileType python :execute 'iabbrev <buffer> imc <F8># {{{# }}}<F8>' 
    autocmd FileType python :set completeopt-=preview
augroup end

augroup python_format
    autocmd FileType python :set fp=black-macchiato
augroup end
