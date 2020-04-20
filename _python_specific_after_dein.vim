augroup abbrevs
    autocmd FileType python :iabbrev <buffer> ret return
    autocmd FileType python :iabbrev <buffer> return NOPENOPENOPE
augroup end


augroup abbrevs
    autocmd FileType python :set fp=black\ -q\ -
augroup end
