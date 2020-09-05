  call dein#add('scrooloose/nerdcommenter')
  call dein#add('michaeljsmith/vim-indent-object')
  call dein#add('tpope/vim-surround')
  call dein#add('tommcdo/vim-exchange') " https://github.com/tommcdo/vim-exchange
  call dein#add('machakann/vim-highlightedyank', {
			  \ 'hook_add' : 'let g:highlightedyank_highlight_duration = 400'})
  call dein#add('jiangmiao/auto-pairs', {
			  \ 'hook_add' : 'source ~/.config/nvim/autopairs.vim'})
  call dein#add('kana/vim-textobj-user') 
  call dein#add('thinca/vim-textobj-comment') " https://github.com/tommcdo/vim-ninja-feet
  "call dein#add('lambdalisue/suda.vim', {
  "            \ 'hook_add' : 'source ~/.config/nvim/suda.vim'}) 
