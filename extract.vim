let g:extract_loadDeoplete=1
let g:extract_useDefaultMappings=0
" mappings for putting
nmap p <Plug>(extract-put)
nmap P <Plug>(extract-Put)

" mappings for cycling
map <m-s> <Plug>(extract-sycle)
map <m-S> <Plug>(extract-Sycle)
map <c-s> <Plug>(extract-cycle)

" mappings for visual
vmap p <Plug>(extract-put)
vmap P <Plug>(extract-Put)

" mappings for insert
imap <m-v> <Plug>(extract-completeReg)
imap <c-v> <Plug>(extract-completeList)
imap <c-s> <Plug>(extract-cycle)
imap <m-s> <Plug>(extract-sycle)
imap <m-S> <Plug>(extract-Sycle)
