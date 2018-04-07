  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('ervandew/screen', {
			  \ 'lazy' : 1, 'on_cmd' : "ScreenShell",
			  \ 'hook_source' : 'source ~/.config/nvim/screen.vim'})
