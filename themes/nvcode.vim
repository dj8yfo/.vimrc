hi Comment cterm=italic
let g:nvcode_termcolors=256

set relativenumber
set number
set colorcolumn=88

syntax on
" colorscheme nord
" colorscheme nvcode
" colorscheme onedark
colorscheme snazzy
" colorscheme aurora


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

hi Visual guifg=#aaaaaa guibg=#222222
hi Search  guifg=#ffff00 guibg=#111111

hi EasyMotionTarget guifg=#00ff00
hi EasyMotionTarget2Second guifg=#00ff00
hi EasyMotionTarget2First guifg=#ffff00

hi LineNr          guifg=#BCBCBC guibg=#3B3A32
