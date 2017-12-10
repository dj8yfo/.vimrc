set shada=!,'100,s10,h
set clipboard+=unnamedplus
set hidden
lan en_US
set updatetime=300
let mapleader = "\<Space>"
let g:python_host_prog = '/Users/sysmanj/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/sysmanj/.pyenv/versions/neovim3/bin/python'
"minimum height of a buffer winwow = 0
set wmh=0

"rg command for vimgrep backend
set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:%c:%m
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
  call dein#add('t9md/vim-quickhl', {
			  \ 'hook_add': 'source ~/.config/nvim/vim-quickhl.vim'})
  call dein#add('easymotion/vim-easymotion', {
			  \ 'hook_add': 'source ~/.config/nvim/vim-easymotion.vim'})
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('haya14busa/incsearch-easymotion.vim',{
			  \ 'hook_add': 'source ~/.config/nvim/incsearch.vim'
			  \ })
  call dein#add('~/.local/share/dein/repos/utl_3_0a.vba')
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
  call dein#add('nixprime/cpsm', {
			  \ 'build' : 'PY3=ON ./install.sh'})

  call dein#add('Shougo/neoyank.vim')
  call dein#add('Shougo/denite.nvim', {
			  \ 'hook_add' : 'source ~/.config/nvim/denite.vim'})

  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-fugitive')
  call dein#add('vim-airline/vim-airline', {
			  \ 'hook_add' : 'source ~/.config/nvim/vim-airline.vim'})
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('elzr/vim-json')
  call dein#add('jeetsukumaran/vim-indentwise')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('michaeljsmith/vim-indent-object')
  call dein#add('tpope/vim-surround')
  call dein#add('majutsushi/tagbar')
  "tmux
  call dein#add('edkolev/tmuxline.vim')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('ervandew/screen', {
			  \ 'lazy' : 1, 'on_cmd' : "ScreenShell",
			  \ 'hook_source' : 'source ~/.config/nvim/screen.vim'})
" colors
  call dein#add('archSeer/colibri.vim')
  call dein#add('nightsense/vrunchbang')
  call dein#add('nightsense/simplifysimplify')
  call dein#add('nightsense/plumber')
  call dein#add('nightsense/nemo')
  call dein#add('nightsense/forgotten')
  call dein#add('lifepillar/vim-wwdc17-theme')
  call dein#add('LanFly/vim-colors')
  call dein#add('skielbasa/vim-material-monokai')
  call dein#add('emhaye/ceudah.vim')
  call dein#add('Badacadabra/vim-archery')
  call dein#add('beigebrucewayne/skull-vim')
  call dein#add('dim13/smyck.vim')
  call dein#add('baines/vim-colorscheme-thaumaturge')
  call dein#add('chr4/jellygrass.vim')
  call dein#add('hzchirs/vim-material')
  call dein#add('Zabanaa/neuromancer.vim')
  call dein#add('beigebrucewayne/Turtles')
" colors end
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

source ~/.config/nvim/colorschemes.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/functions.vim




