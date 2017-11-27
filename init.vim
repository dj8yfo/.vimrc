set clipboard+=unnamedplus
lan en_US
let mapleader = "\<Space>"

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
  call dein#add('easymotion/vim-easymotion')
  call dein#add('archSeer/colibri.vim')
  call dein#add('nightsense/vrunchbang')
  call dein#add('nightsense/simplifysimplify')
  call dein#add('nightsense/plumber')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('haya14busa/incsearch-easymotion.vim')
  call dein#add('~/.local/share/dein/repos/utl_3_0a.vba')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

source ~/.config/nvim/colorschemes.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/vim-easymotion.vim
source ~/.config/nvim/incsearch.vim
