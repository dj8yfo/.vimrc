let g:EasyMotion_do_mapping = 0 " Disable default mappings

map s <Plug>(easymotion-bd-f)
nmap s <Plug>(easymotion-overwin-f)
omap <leader>s <Plug>(easymotion-bd-f)

let g:EasyMotion_smartcase = 1

" JK motions: Line motions
"" alt-j
map <C-j> <Plug>(edgemotion-j)
"" alt-k
map <C-k> <Plug>(edgemotion-k)
let g:EasyMotion_startofline = 0

" Move to word
map  gw <Plug>(easymotion-bd-w)
nmap gw <Plug>(easymotion-overwin-w)
map  gl <Plug>(easymotion-bd-jk)
nmap  gl <Plug>(easymotion-overwin-line)

map <leader>h <Plug>(easymotion-F)
map <leader>l <Plug>(easymotion-f)
