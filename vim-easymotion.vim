let g:EasyMotion_do_mapping = 0 " Disable default mappings

map <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

let g:EasyMotion_smartcase = 1

" JK motions: Line motions
" alt-l
map ì <Plug>(easymotion-lineforward)
" alt-h
map è <Plug>(easymotion-linebackward)
" alt-j
map ê <Plug>(easymotion-j)
" alt-k
map ë <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map  <Leader>l <Plug>(easymotion-overwin-line)
