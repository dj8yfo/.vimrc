augroup abbrevs
    autocmd FileType sh,zsh :iabbrev <buffer> evf $()<C-b>
    autocmd FileType sh,zsh :iabbrev <buffer> evq "$()"<C-b><C-b>
augroup end
