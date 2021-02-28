call dein#add('JamshedVesuna/vim-markdown-preview')
let vim_markdown_preview_github=1
call dein#add('junegunn/vim-easy-align')
"pip install --user grip
"git clone git@github.com:jordansissel/xdotool.git
"pushd xdotool
"sudo make install
"brew install grip
"
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
