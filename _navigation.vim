  call dein#add('thinca/vim-visualstar')
  call dein#add('easymotion/vim-easymotion', {
			  \ 'hook_add': 'source ~/.config/nvim/vim-easymotion.vim'})
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('haya14busa/incsearch-easymotion.vim',{
			  \ 'hook_add': 'source ~/.config/nvim/incsearch.vim'
			  \ })
  call dein#add('haya14busa/incsearch-fuzzy.vim', {
			  \ 'hook_add': 'source ~/.config/nvim/incsearch-fuzzy.vim'
			  \ })
  call dein#add('jeetsukumaran/vim-indentwise')