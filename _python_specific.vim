  if !has('nvim')
  	call dein#add('roxma/nvim-yarp')
  	call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('zchee/deoplete-jedi') " python
  call dein#add('davidhalter/jedi-vim', {
			  \ 'lazy' : 1, 'on_ft' : "python",
			  \ 'hook_source': 'source ~/.config/nvim/jedi-vim.vim'}) " python
  call dein#add('bfredl/nvim-ipy', {
			  \ 'hook_add' : 'source ~/.config/nvim/nvim-ipy.vim'}) 
  call dein#add('mattboehm/vim-unstack')
  call dein#add('numirias/semshi')
  call dein#add('fs111/pydoc.vim')
  call dein#add('bps/vim-textobj-python', {
			  \ 'hook_add' : 'source ~/.config/nvim/vim-textobj-python.vim'})

 
