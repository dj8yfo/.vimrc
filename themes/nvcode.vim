hi Comment cterm=italic
let g:nvcode_termcolors=256

set relativenumber
set number
set colorcolumn=88

syntax on
" colorscheme nord
" colorscheme nvcode
colorscheme molokai
" colorscheme true


" checks if your terminal has 24-bit color support
if (has("nvim"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

hi Visual guifg=#aaaaaa guibg=#222222 
hi Search  guifg=gold guibg=#111111 gui=bold
hi CursorLine guibg=NONE

hi EasyMotionTarget guifg=HotPink gui=bold
hi EasyMotionTarget2Second guifg=#00ff00
hi EasyMotionTarget2First guifg=#ffff00

hi LineNr          guifg=#BCBCBC guibg=#3B3A32

hi ColorColumn guifg=#e3e1e4 guibg=#555555
hi Normal ctermbg=NONE guibg=#2c2e34
hi Visual guifg=#aaaaaa guibg=#222222
hi QuickhlCword guibg=gray27
" autocomplete menu ------------------------- {{{

hi Pmenu           guifg=#5fd7ff  guibg=Grey0
hi PmenuSel        guifg=Grey93 guibg=Grey42
hi PmenuSbar                   guibg=Grey3
hi PmenuThumb      guifg=SteelBlue1
" }}}
