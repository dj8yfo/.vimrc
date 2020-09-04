augroup deoplete_coc
    autocmd FileType javascript,cpp,c,html
    \ CocEnable
augroup END

augroup coc
    set shortmess+=c
    set signcolumn=yes
    autocmd Filetype javascript,html,css,typescript
                \ nmap gd <Plug>(coc-definition)
    autocmd Filetype javascript,html,css,typescript
                \ nmap  <leader>d <Plug>(coc-type-definition)
    autocmd Filetype javascript,html,css,typescript
                \ nmap <leader>i <Plug>(coc-implementation)
    autocmd Filetype javascript,html,css,typescript
                \ nmap <leader>r <Plug>(coc-references)

    autocmd Filetype javascript,html,css,typescript
                \ nmap <silent> [g <Plug>(coc-diagnostic-prev)
    autocmd Filetype javascript,html,css,typescript
                \ nmap <silent> ]g <Plug>(coc-diagnostic-next)

    autocmd Filetype javascript,html,css,typescript
                \ nmap <buffer> K :call <SID>show_documentation()<CR>

    autocmd Filetype javascript,html,css,typescript
                \ no  <buffer> <localleader><localleader>t :NeomakeSh ctags --exclude=node_modules -R .<CR>
augroup END

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup indents
    autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd BufRead,BufNewFile *.js setlocal tabstop=4 shiftwidth=4 softtabstop=4
    autocmd BufRead,BufNewFile *.ts setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup end

augroup filetype_html
    autocmd FileType html,htmldjango nnoremap <buffer> <leader>; Vatzf
augroup end
