  call dein#add('scrooloose/nerdcommenter')
  call dein#add('michaeljsmith/vim-indent-object')
  call dein#add('tpope/vim-surround')
  call dein#add('tommcdo/vim-exchange') " https://github.com/tommcdo/vim-exchange
  call dein#add('machakann/vim-highlightedyank', {
			  \ 'hook_add' : 'let g:highlightedyank_highlight_duration = 400'})
  call dein#add('jiangmiao/auto-pairs', {
			  \ 'hook_add' : 'let g:AutoPairsFlyMode = 1'})
