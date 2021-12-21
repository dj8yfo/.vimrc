" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')


Plug 'thinca/vim-visualstar'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-edgemotion'
Plug 'tpope/vim-surround'
Plug 'Valloric/ListToggle'
Plug 'tommcdo/vim-exchange'
Plug 'mbbill/undotree'
Plug 'sickill/vim-monokai'
Plug 'tomasr/molokai'
Plug 'lifepillar/pgsql.vim'

Plug 'Mcmartelle/vim-monokai-bold'
Plug 'megantiu/true.vim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'luochen1990/rainbow'
Plug 'plainfingers/black_is_the_color'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'arzg/vim-colors-xcode'
Plug 'bfredl/nvim-miniyank'
Plug 'Yggdroot/indentLine'
Plug 'powerman/vim-plugin-AnsiEsc'


Plug 'junegunn/goyo.vim'
Plug 'jeetsukumaran/vim-indentwise'

" call dein#add('megantiu/true.vim')

Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'segeljakt/vim-stealth'

set rtp+=~/.fzf

Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
Plug 'wincent/ferret'
Plug 't9md/vim-quickhl'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'jpalardy/vim-slime'
Plug 'sbdchd/neoformat'

" Better Comments
Plug 'tpope/vim-commentary'
" Text Navigation
Plug 'unblevable/quick-scope'
" Useful for React Commenting 
Plug 'suy/vim-context-commentstring'
" While I'm learning Lua
Plug 'nanotee/nvim-lua-guide'
Plug 'rafcamlet/nvim-luapad'


" Easymotion
" Have the file system follow you around
Plug 'airblade/vim-rooter'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'
" Cool Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Status Line
Plug 'glepnir/galaxyline.nvim'
" Ranger
Plug 'kevinhwang91/rnvimr'
" Terminal
Plug 'voldikss/vim-floaterm'
" Start Screen
Plug 'mhinz/vim-startify'
" Vista
Plug 'liuchengxu/vista.vim'
" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key'
" Snippets
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
" Interactive code
Plug 'metakirby5/codi.vim'
" Better tabline
Plug 'romgrk/barbar.nvim'
" Find and replace
Plug 'Shougo/denite.nvim'
" Smooth scroll
Plug 'psliwka/vim-smoothie'
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
" Intuitive buffer closing
Plug 'moll/vim-bbye'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

" Plug 'oberblastmeister/neuron.nvim'
" Plug 'pyrho/nerveux.nvim'
" Intellisense
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'onsails/lspkind-nvim'
Plug 'kosayoda/nvim-lightbulb'
Plug 'mfussenegger/nvim-jdtls'
Plug 'mfussenegger/nvim-dap'
" https://github.com/mhartington/formatter.nvim look into this
" File Explorer
Plug 'kyazdani42/nvim-tree.lua'
Plug 'Shougo/defx.nvim'

" Themes
Plug 'christianchiarulli/nvcode-color-schemes.vim'
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'
" Easily Create Gists
Plug 'mattn/vim-gist'
Plug 'mattn/webapi-vim'
" Neovim in Browser
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(1) } }
" Webdev
" Auto change html tags
Plug 'AndrewRadev/tagalong.vim'
" Closetags
Plug 'alvan/vim-closetag'
" Colorizer
Plug 'norcalli/nvim-colorizer.lua'
" live server
Plug 'turbio/bracey.vim'
" Better quickfix
Plug 'kevinhwang91/nvim-bqf'
" new ones
Plug 'AndrewRadev/bufferize.vim'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
