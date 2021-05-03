augroup javascript_format
    " autocmd FileType javascript,css setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
    autocmd FileType javascript map gP :Neoformat prettier<CR>
augroup end

