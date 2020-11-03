let mapleader = "\<Space>"
let maplocalleader = "\<Space>"
set cmdwinheight=25

if has('unix')
    let g:python_host_prog = '/home/hypen9/.pyenv/versions/neovim2/bin/python'
    let g:python3_host_prog = '/home/hypen9/.pyenv/versions/neovim3/bin/python'
endif

if has('macunix')
    let g:python_host_prog = '/Users/rblstrmtp/.pyenv/versions/neovim2/bin/python'
    let g:python3_host_prog = '/Users/rblstrmtp/.pyenv/versions/neovim3/bin/python'
endif

" var options ---------------------------- {{{
set shada=!,'100,s10,h
set clipboard+=unnamedplus
set nohidden
" lan en_US
set updatetime=300
"minimum height of a buffer winwow = 0
set wmh=0
set tags=tags;
set listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<,space:.
set sm
set matchtime=3

set expandtab
set signcolumn=yes

"rg command for vimgrep backend
set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:%c:%m
" }}}

"dein Scripts----------------------------- {{{
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim
set rtp+=~/.fzf

" Required:
if dein#load_state('~/.local/share/dein')

    call dein#begin('~/.local/share/dein')

    " Required:
    call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
    "libs start
    call dein#add('~/.local/share/dein/repos/utl_3_0a.vba')
    "libs end
    call dein#add('wsdjeg/dein-ui.vim')
    
    " ./install_xbk_input_mac.sh 
    let g:XkbSwitchEnabled = 1
    call dein#add('lyokha/vim-xkbswitch')
    let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'

    source ~/.config/nvim/_navigation.vim
    source ~/.config/nvim/_nifty_editing.vim
    source ~/.config/nvim/_version_control.vim
    source ~/.config/nvim/_syntax_various.vim
    source ~/.config/nvim/_appearance.vim
    "
    "order is important: the bindings from ragtags(_syntax_various.vim) should override those
    "from fzf(_ide_smart.vim)
    source ~/.config/nvim/_ide_smart.vim

    source ~/.config/nvim/_javascript_specific.vim
    source ~/.config/nvim/markdown.vim
    source ~/.config/nvim/_python_specific.vim
    source ~/.config/nvim/_tmux.vim
    source ~/.config/nvim/list_colors.vim
    source ~/.config/nvim/go_specific.vim
    "Required:
    call dein#end()
    call dein#save_state()
endif
"}}}

" Required:
filetype plugin indent on
syntax enable

" vimscript file settings ------------------------------------ {{{
augroup filetype_vim
    autocmd!
    autocmd BufRead,BufNewFile *.vim setlocal tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType zsh setlocal foldmethod=marker
    autocmd FileType vim :execute 'iabbrev <buffer> imc <F8>" {{{ }}}<F8>'
augroup END
    autocmd BufRead,BufNewFile * set nowrap
augroup all_files
augroup END
" }}}

" log file settings ------------------------------------ {{{
au! BufNewFile,BufRead *.log set filetype=log
" }}}


" keybindings, functions colorscheme and filetype initializations ------------------------------------ {{{
let g:coc_disable_transparent_cursor = 1
source ~/.config/nvim/functions.vim
source ~/.config/nvim/_javascript_after_dein.vim
source ~/.config/nvim/_python_specific_after_dein.vim
source ~/.config/nvim/_bash_specific_after_dein.vim
source ~/.config/nvim/cscope_maps.vim
source ~/.config/nvim/_c_specific.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/go_specific_after_dein.vim

let g:sonokai_enable_italic = 1
let g:edge_enable_italic = 1
let g:sonokai_style = 'shusia'
colorscheme  sonokai
source ~/.config/nvim/colorschemes.vim

augroup yaml_format
    autocmd FileType yaml setlocal ts=4 sts=4 sw=4 expandtab
augroup end
" }}}
"

"hi Normal guibg=NONE ctermbg=NONE
hi Normal ctermbg=NONE
" transparent background
call Toggle_chrosshairs()
