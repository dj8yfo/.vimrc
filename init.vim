set shada=!,'100,s10,h
set clipboard+=unnamedplus
set hidden
" lan en_US
set updatetime=300
let mapleader = "\<Space>"
let g:python_host_prog = '/home/sysmanj/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/sysmanj/.pyenv/versions/neovim3/bin/python'
"minimum height of a buffer winwow = 0
set wmh=0
au! BufNewFile,BufRead *.log set filetype=python
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
  call dein#add('haya14busa/incsearch-fuzzy.vim', {
			  \ 'hook_add': 'source ~/.config/nvim/incsearch-fuzzy.vim'
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
  call dein#add('bfredl/nvim-ipy', {
			  \ 'hook_add' : 'source ~/.config/nvim/nvim-ipy.vim'}) 

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
  call dein#add('gcmt/taboo.vim', {
			  \ 'hook_add' : 'source ~/.config/nvim/taboo.vim'})
  call dein#add('vim-airline/vim-airline', {
			  \ 'hook_add' : 'source ~/.config/nvim/vim-airline.vim'})
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('jeetsukumaran/vim-indentwise')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('michaeljsmith/vim-indent-object')
  call dein#add('tpope/vim-surround')
  call dein#add('majutsushi/tagbar')
  call dein#add('junegunn/rainbow_parentheses.vim')
  call dein#add('mattboehm/vim-unstack')
  call dein#add('machakann/vim-highlightedyank', {
			  \ 'hook_add' : 'let g:highlightedyank_highlight_duration = 400'})
  call dein#add('mpetrov/vim-diffstat')
  call dein#add('elzr/vim-json', {
			  \ 'hook_add' : 'let g:vim_json_syntax_conceal = 1'})
  call dein#add('sheerun/vim-polyglot')
  call dein#add('euclio/vim-markdown-composer', {
			  \ 'lazy' : 1, 'on_ft' : "markdown",
			  \'build' : 'cargo build --release',
			  \ 'hook_add' : 'let g:markdown_composer_browser = "/Applications/Firefox.app/Contents/MacOS/firefox"'})
  "tmux
  call dein#add('edkolev/tmuxline.vim')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('ervandew/screen', {
			  \ 'lazy' : 1, 'on_cmd' : "ScreenShell",
			  \ 'hook_source' : 'source ~/.config/nvim/screen.vim'})
" colors
  call dein#add('archSeer/colibri.vim')
  call dein#add('nightsense/plumber')
  call dein#add('lifepillar/vim-wwdc17-theme')
  call dein#add('LanFly/vim-colors')
  call dein#add('skielbasa/vim-material-monokai')
  call dein#add('emhaye/ceudah.vim')
  call dein#add('baines/vim-colorscheme-thaumaturge')
  call dein#add('chr4/jellygrass.vim')
  call dein#add('hzchirs/vim-material')
  call dein#add('Zabanaa/neuromancer.vim')
  call dein#add('beigebrucewayne/Turtles')
  call dein#add('carakan/new-railscasts-theme')
  call dein#add('kudabux/vim-srcery-drk')
  call dein#add('bluz71/vim-moonfly-colors')
  call dein#add('rakr/vim-one')
  call dein#add('broduo/broduo-color-scheme')
  call dein#add('rhysd/vim-color-shiny-white')
  call dein#add('a-nikolaev/vim-boltzmann')
  call dein#add('ltlollo/diokai')
  call dein#add('fneu/breezy')
  call dein#add('aliou/moriarty.vim')
  call dein#add('~/.config/nvim/colors')
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




