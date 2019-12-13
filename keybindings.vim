no <C-j> <C-W>j
no <C-k> <C-W>k
no <C-h> <C-W>h
no <C-l> <C-W>l

no <leader>cd :tcd %:h<CR>
map <leader>ed :e <C-R>=expand("%:p:h") . "/" <CR>
no <leader>j<Space> :bd!<CR>

map ]l :lnext<CR>
map [l :lprev<CR>
no \p :let @+ = expand('%:p')<CR>
no \f :let @+ = expand('%:t')<CR>
no \t :NeomakeSh ctags -R .<CR>
nmap <leader>\ :TagbarToggle<CR>
nmap \\ :TagbarOpen fj<CR>
no \1 :TabooRename 
no \/ /fzalnlsdndglksa<CR>
no \0 :set syntax=none<CR>
map \g :Gstatus<CR>
no <leader>a q:
map \` :setlocal foldmethod=indent<CR>
no \e :lopen 8<CR>
nmap <C-n> o<Esc>k
nmap <C-p> O<Esc>j

nmap <leader>1 :1tabn<CR>
nmap <leader>2 :2tabn<CR>
nmap <leader>3 :3tabn<CR>
nmap <leader>4 :4tabn<CR>
nmap <leader>5 :5tabn<CR>
nmap <leader>6 :6tabn<CR>
nmap <leader>7 :7tabn<CR>
nmap <leader>8 :8tabn<CR>
nmap <leader>9 :9tabn<CR>
inoremap <C-g> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-space> <Right>
inoremap <C-l> <Right>
nmap <c-a> :w<CR>
vmap <c-a> <Esc><c-a>gv
imap <c-a> <Esc><c-a>
map <M-a> <esc>ggVG
map <M-\> <esc>ggVG=
map <M-t> <esc>:DeleteTrailingW<CR>
nmap <leader>x :qa!<CR>
map <leader>C :call Toggle_chrosshairs()<CR>


vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

no <leader>jp :Pyre 
no <leader>jj :Pyja 
