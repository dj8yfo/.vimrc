call dein#add('ekalinin/Dockerfile.vim')
call dein#add('elzr/vim-json', {
            \ 'hook_add' : 'let g:vim_json_syntax_conceal = 1'})

call dein#add('pangloss/vim-javascript')
call dein#add('sheerun/vim-polyglot', { 
			  \ 'hook_add' : "let g:polyglot_disabled = ['javascript', 'html']"})

call dein#add('euclio/vim-markdown-composer', {
            \ 'lazy' : 1, 'on_ft' : "markdown",
            \'build' : 'cargo build --release',
            \ 'hook_add' : 'let g:markdown_composer_browser = "/Applications/Firefox.app/Contents/MacOS/firefox"'})
call dein#add('othree/html5.vim', {
            \ 'lazy' : 1, 'on_ft' : "html"})
call dein#add('tpope/vim-ragtag', {
            \ 'lazy' : 1, 'on_ft' :[ "htmldjango", "html"],
            \ 'hook_add' : 'let g:ragtag_global_maps = 1' })
