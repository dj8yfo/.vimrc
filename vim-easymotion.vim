let g:EasyMotion_do_mapping = 0 " Disable default mappings

map s <Plug>(easymotion-bd-f)
nmap s <Plug>(easymotion-overwin-f)

let g:EasyMotion_smartcase = 1

" JK motions: Line motions
" alt-j
map <Leader>h <Plug>(easymotion-linebackward)
" alt-k
map <Leader>l <Plug>(easymotion-lineforward)
" alt-j
map <Leader>J <Plug>(easymotion-j)
" alt-k
map <Leader>K <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map  <Leader>k <Plug>(easymotion-overwin-line)
