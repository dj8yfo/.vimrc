augroup abbrevs
    autocmd FileType sh,zsh :iabbrev <buffer> evf $()<C-b>
    autocmd FileType sh,zsh :iabbrev <buffer> evq "$()"<C-b><C-b>
    autocmd FileType sh,zsh :execute 'iabbrev <buffer> imc <F8># {{{# }}}<F8>' 
augroup end
