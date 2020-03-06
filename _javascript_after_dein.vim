
autocmd Filetype javascript,html,css
            \ nmap gd <Plug>(coc-definition)
autocmd Filetype javascript,html,css
            \ nmap  <leader>d <Plug>(coc-type-definition)
autocmd Filetype javascript,html,css
            \ nmap <leader>i <Plug>(coc-implementation)
autocmd Filetype javascript,html,css
            \ nmap <leader>r <Plug>(coc-references)

autocmd Filetype javascript,html,css
            \ nmap <silent> [g <Plug>(coc-diagnostic-prev)
autocmd Filetype javascript,html,css
            \ nmap <silent> ]g <Plug>(coc-diagnostic-next)

autocmd Filetype javascript,html,css
            \ nmap <buffer> K :call <SID>show_documentation()<CR>

autocmd Filetype javascript,html,css
            \ no  <buffer> <localleader><localleader>t :NeomakeSh ctags --exclude=node_modules -R .<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.js setlocal tabstop=4 shiftwidth=4 softtabstop=4
