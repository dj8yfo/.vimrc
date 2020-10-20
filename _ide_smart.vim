call dein#add('Shougo/deoplete.nvim', {
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

"call dein#add('KabbAmine/zeavim.vim', {
"            \ 'hook_add' : 'source ~/.config/nvim/zeal_doc.vim'})
call dein#add('chrisbra/NrrwRgn', {
            \ 'hook_add' : 'source ~/.config/nvim/narrow_region.vim'})
call dein#add('segeljakt/vim-stealth')
call dein#add('junegunn/fzf.vim', {
            \ 'hook_add': 'set rtp+=~/.fzf'})
call dein#add('wincent/ferret', {
            \ 'hook_add': 'let g:FerretMap=0'})
call dein#add('Chiel92/vim-autoformat', {
            \ 'hook_add': 'source ~/.config/nvim/autoformat_settings.vim'})

call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
call dein#add('mbbill/undotree')
call dein#add('tpope/vim-obsession')
call dein#add('roman/golden-ratio')

"CocInstall coc-tsserver coc-json coc-html coc-css
