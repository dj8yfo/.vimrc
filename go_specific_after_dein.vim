let g:go_bin_path = '/home/hypen9/Documents/code/GO_PKGS/bin'
let g:go_def_mapping_enabled = 0
" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

augroup deoplete_coc
    autocmd FileType go
    \ CocEnable
augroup END

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

augroup coc_go
    "set shortmess+=c
    "set signcolumn=yes
    autocmd!
    autocmd FileType go
                \ nmap <silent> gd <Plug>(coc-definition)
    autocmd FileType go
                \ nmap  <silent> <leader>d <Plug>(coc-type-definition)
    autocmd FileType go
                \ nmap <silent> <leader>i <Plug>(coc-implementation)
    autocmd FileType go
                \ nmap <silent> gr <Plug>(coc-references)

    autocmd FileType go
                \ nmap <silent> [g <Plug>(coc-diagnostic-prev)
    autocmd FileType go
                \ nmap <silent> ]g <Plug>(coc-diagnostic-next)

    autocmd FileType go
                \ nmap <silent> <buffer> K :call <SID>show_documentation()<CR>

    autocmd FileType go
                \ inoremap <silent><expr> <c-space> coc#refresh()

    autocmd FileType go
                \ nmap <silent> <leader>rn <Plug>(coc-rename)
    autocmd FileType go
                \ vmap <silent> <leader>u  <Plug>(coc-format-selected)
    autocmd FileType go
                \ nmap <silent> <leader>u  <Plug>(coc-format-selected)

    autocmd FileType go
                \ nnoremap <silent> <space>ea  :<C-u>CocList diagnostics<cr>
    autocmd FileType go
                \ nnoremap <silent> <space>ee  :<C-u>CocList extensions<cr>
    autocmd FileType go
                \ nnoremap <silent> <space>ec  :<C-u>CocList commands<cr>
    autocmd FileType go
                \ nnoremap <silent> <space>eo  :<C-u>CocList outline<cr>
    autocmd FileType go
                \ nnoremap <silent> <space>es  :<C-u>CocList -I symbols<cr>
    autocmd FileType go
                \ nnoremap <silent> <space>ej  :<C-u>CocNext<CR>
    autocmd FileType go
                \ nnoremap <silent> <space>ek  :<C-u>CocPrev<CR>
    autocmd FileType go
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
    autocmd BufRead,BufNewFile *.go silent setlocal noexpandtab
    autocmd BufRead,BufNewFile *.go silent setlocal tabstop=4 shiftwidth=4 softtabstop=4
augroup end
