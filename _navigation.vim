call dein#add('thinca/vim-visualstar')
call dein#add('easymotion/vim-easymotion')
call dein#add('haya14busa/vim-edgemotion', {
            \ 'hook_add': 'source ~/.config/nvim/vim-easymotion.vim'})
call dein#add('haya14busa/incsearch.vim')
call dein#add('haya14busa/incsearch-easymotion.vim',{
            \ 'hook_add': 'source ~/.config/nvim/incsearch.vim'
            \ })
call dein#add('haya14busa/incsearch-fuzzy.vim', {
            \ 'hook_add': 'source ~/.config/nvim/incsearch-fuzzy.vim'
            \ })
call dein#add('jeetsukumaran/vim-indentwise')
call dein#add('yangmillstheory/vim-snipe')
call dein#add('Shougo/defx.nvim', {
            \ 'hook_add': 'source ~/.config/nvim/defx_settings.vim'
            \ })
