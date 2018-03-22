if has('nvim')
  set termguicolors
endif
set guicursor=
set background=dark
colorscheme ceudah
set colorcolumn=80
hi Comment term=bold ctermfg=Cyan guifg=#666666 gui=bold
hi Folded guifg=white guibg=black ctermfg=white ctermbg=black
" the two below are used by denite search
hi CursorLine guifg=#00cccc gui=bold guibg=#444444
hi Search guifg=#00eeee guibg=#222222
hi ColorColumn ctermbg=Cyan guibg=#222222
autocmd VimEnter * RainbowParentheses
