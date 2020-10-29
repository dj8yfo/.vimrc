augroup PreviewOnBottom
    autocmd InsertEnter * set splitbelow
    autocmd InsertLeave * set splitbelow!
augroup END

inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
let g:deoplete#enable_at_startup = 1
"set completeopt-=preview
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
 return deoplete#close_popup() . "\<CR>"
endfunction

augroup deoplete_my
    autocmd CompleteDone * silent! pclose!
    autocmd VimEnter * silent call deoplete#custom#option('auto_complete_delay', 0)
augroup end

augroup deoplete_coc
    autocmd!
    autocmd VimEnter * silent CocDisable

    "autocmd FileType javascript
    "\ call deoplete#disable()
    autocmd FileType cpp,c
    \ call deoplete#disable()
    "autocmd FileType json
    "\ call deoplete#disable()
    autocmd FileType html
    \ call deoplete#disable()
    "autocmd FileType go
    "\ call deoplete#disable()
augroup END
