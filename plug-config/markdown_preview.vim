"pip install --user grip
"git clone git@github.com:jordansissel/xdotool.git
"pushd xdotool
"sudo apt install libxkbcommon-dev libxtst-dev
"sudo make install


augroup markdown_preview
    au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
    au FileType markdown let vim_markdown_preview_github=1
    " au FileType markdown let vim_markdown_preview_browser='google-chrome'
    au FileType markdown nmap <C-\> :call Vim_Markdown_Preview()<CR>
augroup END
