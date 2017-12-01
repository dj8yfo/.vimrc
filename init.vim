set clipboard+=unnamedplus
set hidden
lan en_US
let mapleader = "\<Space>"
let g:python_host_prog = '/Users/sysmanj/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/sysmanj/.pyenv/versions/neovim3/bin/python'

"
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  " Required:
  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('thinca/vim-visualstar')
  call dein#add('easymotion/vim-easymotion', {
			  \ 'hook_add': 'source ~/.config/nvim/vim-easymotion.vim'})
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('haya14busa/incsearch-easymotion.vim',{
			  \ 'hook_add': 'source ~/.config/nvim/incsearch.vim'
			  \ })
  call dein#add('~/.local/share/dein/repos/utl_3_0a.vba')
  call dein#add('jgdavey/tslime.vim', {
			  \ 'hook_add' : 'source ~/.config/nvim/tslime.vim'})
  call dein#add('Shougo/deoplete.nvim', {
			  \ 'lazy' : 1, 'on_i' : 1,
			  \ 'hook_add': 'source ~/.config/nvim/deoplete.vim'})
  if !has('nvim')
  	call dein#add('roxma/nvim-yarp')
  	call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('zchee/deoplete-jedi') " python
  call dein#add('davidhalter/jedi-vim', {
			  \ 'lazy' : 1, 'on_ft' : "python",
			  \ 'hook_source': 'source ~/.config/nvim/jedi-vim.vim'}) " python

  call dein#add('Shougo/echodoc.vim', {
			  \ 'hook_add' : 'source ~/.config/nvim/echodoc.vim'})
  call dein#add('ekalinin/Dockerfile.vim')

  call dein#add('neomake/neomake', {
			  \ 'hook_add' : 'source ~/.config/nvim/neomake.vim'}) " python

" colors
  call dein#add('archSeer/colibri.vim', {'script_type' : 'colors'} )
  call dein#add('nightsense/vrunchbang', {'script_type' : 'colors'} )
  call dein#add('nightsense/simplifysimplify', {'script_type' : 'colors'} )
  call dein#add('nightsense/plumber', {'script_type' : 'colors'} )
  call dein#add('nightsense/nemo', {'script_type' : 'colors'} )
  call dein#add('nightsense/forgotten', {'script_type' : 'colors'} )
  call dein#add('lifepillar/vim-wwdc17-theme', {'script_type' : 'colors'} )
  call dein#add('nightsense/seabird', {'script_type' : 'colors'} )
  call dein#add('LanFly/vim-colors', {'script_type' : 'colors'} )
" colors end
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

source ~/.config/nvim/colorschemes.vim
source ~/.config/nvim/functions.vim




