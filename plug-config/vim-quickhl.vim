nmap <Leader>m <Plug>(quickhl-manual-this-whole-word)
xmap <Leader>m <Plug>(quickhl-manual-this-whole-word)
nmap \m <Plug>(quickhl-manual-this)
xmap \m <Plug>(quickhl-manual-this)

nmap <F9>     <Plug>(quickhl-cword-toggle)
xmap <F9>     <Plug>(quickhl-cword-toggle)

nmap <Leader>M <Plug>(quickhl-manual-reset)
xmap <Leader>M <Plug>(quickhl-manual-reset)


let g:quickhl_manual_colors = [
    \ "gui=bold ctermfg=16  ctermbg=153 guibg=#444444 guifg=#ffff00",
    \ "gui=bold ctermfg=7   ctermbg=1   guibg=#444444 guifg=#ff00ff",
    \ "gui=bold ctermfg=7   ctermbg=2   guibg=#444444 guifg=#00ffff",
    \ "gui=bold ctermfg=7   ctermbg=3   guibg=#444444 guifg=MediumSpringGreen",
    \ "gui=bold ctermfg=7   ctermbg=3   guibg=#444444 guifg=MistyRose1",
    \ "gui=bold ctermfg=7   ctermbg=3   guibg=#444444 guifg=IndianRed1",
    \ "gui=bold ctermfg=7   ctermbg=3   guibg=#444444 guifg=LightSlateBlue",
    \ "gui=bold ctermfg=7   ctermbg=3   guibg=#444444 guifg=gold1",
    \ ]
