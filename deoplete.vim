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
augroup end

let g:deoplete#auto_complete_delay = 0

augroup deoplete_coc
    autocmd!
    autocmd VimEnter * CocDisable

    autocmd FileType javascript
    \ call deoplete#disable()
    autocmd FileType cpp,c
    \ call deoplete#disable()
    autocmd FileType json
    \ call deoplete#disable()
    autocmd FileType html
    \ call deoplete#disable()
augroup END
