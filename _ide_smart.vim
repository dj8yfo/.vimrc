  call dein#add('Shougo/deoplete.nvim', {
			  \ 'lazy' : 1, 'on_i' : 1,
			  \ 'hook_add': 'source ~/.config/nvim/deoplete.vim',
			  \ 'hook_source': 'source ~/.config/nvim/deoplete_source.vim'})
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Shougo/echodoc.vim', {
			  \ 'hook_add' : 'source ~/.config/nvim/echodoc.vim'})
  call dein#add('neomake/neomake', {
			  \ 'hook_add' : 'source ~/.config/nvim/neomake.vim'}) " python
  call dein#add('nixprime/cpsm', {
			  \ 'build' : 'PY3=ON ./install.sh'})
  call dein#add('Shougo/denite.nvim', {
			  \ 'hook_add' : 'source ~/.config/nvim/denite.vim'})
  call dein#add('Shougo/neoyank.vim')
  call dein#add('majutsushi/tagbar')

  call dein#add('KabbAmine/zeavim.vim', {
			  \ 'hook_add' : 'source ~/.config/nvim/zeal_doc.vim'})
  call dein#add('chrisbra/NrrwRgn')
  call dein#add('junegunn/fzf.vim', {
  			  \ 'hook_add': 'set rtp+=~/.fzf'})
  call dein#add('wincent/ferret', {
  			  \ 'hook_add': 'let g:FerretMap=0'})




