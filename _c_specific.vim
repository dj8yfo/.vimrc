augroup coc
    autocmd Filetype cpp,c
                \ nmap gd <Plug>(coc-definition)
    autocmd Filetype cpp,c
                \ nmap  <leader>d <Plug>(coc-type-definition)
    autocmd Filetype cpp,c
                \ nmap <leader>i <Plug>(coc-implementation)
    autocmd Filetype cpp,c
                \ nmap <leader>r <Plug>(coc-references)

    autocmd Filetype cpp,c
                \ nmap <silent> [g <Plug>(coc-diagnostic-prev)
    autocmd Filetype cpp,c
                \ nmap <silent> ]g <Plug>(coc-diagnostic-next)

    autocmd Filetype cpp,c
                \ nmap <buffer> K :call <SID>show_documentation()<CR>
augroup END

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup indents
    autocmd BufRead,BufNewFile *.c,*.cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4
augroup end
