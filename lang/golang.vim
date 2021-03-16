augroup go_format
    autocmd FileType go :set fp=gofmt
augroup end

augroup abbrevs
    autocmd FileType go :iabbrev <buffer> s= :=
    autocmd FileType go :iabbrev <buffer> n= !=
    autocmd FileType go :iabbrev <buffer> zi, <-
augroup end
