augroup abbrevs
    autocmd FileType python :iabbrev <buffer> ret return
    autocmd FileType python :iabbrev <buffer> return NOPENOPENOPE
    autocmd FileType python :execute 'iabbrev <buffer> imc <F8># {{{# }}}<F8>' 
augroup end


augroup abbrevs
    autocmd FileType python :set fp=black\ -q\ -
augroup end
