augroup deoplete_coc
    autocmd FileType javascript,cpp,c,html
    \ CocEnable
augroup END

augroup coc_javascript
    set shortmess+=c
    set signcolumn=yes
    autocmd Filetype javascript,html,css,typescript
                \ nmap <silent> gd <Plug>(coc-definition)
    autocmd Filetype javascript,html,css,typescript
                \ nmap  <silent> <leader>d <Plug>(coc-type-definition)
    autocmd Filetype javascript,html,css,typescript
                \ nmap <silent> <leader>i <Plug>(coc-implementation)
    autocmd Filetype javascript,html,css,typescript
                \ nmap <silent> gr <Plug>(coc-references)

    autocmd Filetype javascript,html,css,typescript
                \ nmap <silent> [g <Plug>(coc-diagnostic-prev)
    autocmd Filetype javascript,html,css,typescript
                \ nmap <silent> ]g <Plug>(coc-diagnostic-next)

    autocmd Filetype javascript,html,css,typescript
                \ nmap <silent> <buffer> K :call <SID>show_documentation()<CR>

    autocmd Filetype javascript,html,css,typescript
                \ no  <silent> <buffer> <localleader><localleader>t :NeomakeSh ctags --exclude=node_modules -R .<CR>

    autocmd FileType javascript,html,css,typescript
                \ inoremap <silent><expr> <c-space> coc#refresh()

    autocmd FileType javascript,html,css,typescript
                \ nmap <silent> <leader>rn <Plug>(coc-rename)
    autocmd FileType javascript,html,css,typescript
                \ vmap <silent> <leader>u  <Plug>(coc-format-selected)
    autocmd FileType javascript,html,css,typescript
                \ nmap <silent> <leader>u  <Plug>(coc-format-selected)

    autocmd FileType javascript,html,css,typescript
                \ nnoremap <silent> <space>ea  :<C-u>CocList diagnostics<cr>
    autocmd FileType javascript,html,css,typescript
                \ nnoremap <silent> <space>ee  :<C-u>CocList extensions<cr>
    autocmd FileType javascript,html,css,typescript
                \ nnoremap <silent> <space>ec  :<C-u>CocList commands<cr>
    autocmd FileType javascript,html,css,typescript
                \ nnoremap <silent> <space>eo  :<C-u>CocList outline<cr>
    autocmd FileType javascript,html,css,typescript
                \ nnoremap <silent> <space>es  :<C-u>CocList -I symbols<cr>
    autocmd FileType javascript,html,css,typescript
                \ nnoremap <silent> <space>ej  :<C-u>CocNext<CR>
    autocmd FileType javascript,html,css,typescript
                \ nnoremap <silent> <space>ek  :<C-u>CocPrev<CR>
    autocmd FileType javascript,html,css,typescript
                \ nnoremap <silent> <space>ep  :<C-u>CocListResume<CR>
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
