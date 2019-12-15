set shada=!,'100,s10,h
set clipboard+=unnamedplus
set hidden
" lan en_US
set updatetime=300
let mapleader = "\<Space>"
    " Be iMproved
let g:python_host_prog = '/home/hypen9/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/hypen9/.pyenv/versions/neovim3/bin/python'
    " Be iMproved
"minimum height of a buffer winwow = 0
set wmh=0
set tags=tags;
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
  "libs start
  call dein#add('~/.local/share/dein/repos/utl_3_0a.vba')
  "libs end
  "
  source ~/.config/nvim/_navigation.vim
  source ~/.config/nvim/_nifty_editing.vim
  source ~/.config/nvim/_version_control.vim
  source ~/.config/nvim/_appearance.vim
  source ~/.config/nvim/_ide_smart.vim
  source ~/.config/nvim/_syntax_various.vim
  source ~/.config/nvim/_python_specific.vim
  source ~/.config/nvim/_tmux.vim
  source ~/.config/nvim/list_colors.vim
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

source ~/.config/nvim/colorschemes.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/keybindings.vim

"hi Normal guibg=NONE ctermbg=NONE
" transparent background
call Toggle_chrosshairs()
