let g:EasyMotion_do_mapping = 0 " Disable default mappings

map s <Plug>(easymotion-bd-f)
nmap s <Plug>(easymotion-overwin-f)

let g:EasyMotion_smartcase = 1

" JK motions: Line motions
" alt-j
map <M-h> <Plug>(easymotion-linebackward)
" alt-k
map <M-l> <Plug>(easymotion-lineforward)
" alt-j
map <M-j> <Plug>(easymotion-j)
" alt-k
map <M-k> <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0

" Move to word
map  gw <Plug>(easymotion-bd-w)
nmap gw <Plug>(easymotion-overwin-w)
map  gl <Plug>(easymotion-overwin-line)
