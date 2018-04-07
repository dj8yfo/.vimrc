if has('nvim')
  set termguicolors
endif
"set guicursor=
set background=dark
colorscheme tender
set relativenumber
set colorcolumn=80
hi Comment term=bold ctermfg=Cyan guifg=#666666 gui=bold
hi Folded guifg=white guibg=black ctermfg=white ctermbg=black
" the two below are used by denite search
hi LineNr guifg=#00ff00
hi CursorLineNr guifg=#00bb00 gui=italic,bold
hi Visual guibg=Brown gui=bold
hi CursorLine gui=bold guibg=#333333
hi Search guifg=#00eeee guibg=#222222
hi ColorColumn ctermbg=Cyan guibg=#333333
autocmd VimEnter * RainbowParentheses
