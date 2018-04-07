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
autocmd CompleteDone * silent! pclose!
let g:deoplete#auto_complete_delay = 30
