if has('nvim')
  set termguicolors
endif
set background=dark
colorscheme vim-material
hi Comment term=bold ctermfg=Cyan guifg=#666666 gui=bold
" the two below are used by denite search
hi CursorLine guifg=#00cccc gui=bold guibg=#444444
hi Search guifg=#00eeee guibg=#222222
"hi ColorColumn ctermbg=lightgrey guibg=lightgrey
