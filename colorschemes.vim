if has('nvim')
  set termguicolors
endif
"set guicursor=
set background=dark
color  true
set relativenumber
set number
set colorcolumn=80
hi Comment term=bold ctermfg=Cyan guifg=#ffffff guibg=#333333
hi Folded guifg=white guibg=black ctermfg=white ctermbg=black
" the two below are used by denite search
hi LineNr guifg=#00ff00 guibg=None
hi CursorLineNr guifg=#00bb00 
hi Visual guifg=#aaaaaa guibg=#222222
hi CursorLine guibg=#333333
hi Search gui=bold guifg=#00ff00 guibg=black
hi ColorColumn ctermbg=Cyan guibg=#333333
autocmd VimEnter * RainbowParentheses

hi EasyMotionTarget guifg=#00ff00
hi SmartMotionHL1 guifg=#00ff00 guibg=#000000

highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

hi MatchParen guibg=gray  guifg=white
