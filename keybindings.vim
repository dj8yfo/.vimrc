nmap <C-a> :w<CR>
vmap <C-a> <Esc><C-a>gv
nmap <C-n> o<Esc>k
nmap <C-p> O<Esc>j
no   <C-j> <C-W>j
no   <C-k> <C-W>k
no   <C-h> <C-W>h
no   <C-l> <C-W>l
no <C-g> i <Esc>
imap <C-e> <Esc>$a
imap <C-a> <Esc>0i
imap <C-d> <Esc>lxa
imap <C-]> <Esc>ui<Right>


map f <Plug>(snipe-f)
map F <Plug>(snipe-F)
map t <Plug>(snipe-t)
map T <Plug>(snipe-T)
map e <Plug>(snipe-e)
nmap <leader><leader>a <Plug>(snipe-f-a)

cmap <C-g> <Left>
inor <C-b> <Left>
inor <C-f> <Right>

inor <C-n> <Down>
inor <C-p> <Up>
cmap <C-f> <Right>
no   <C-t> :NeomakeSh ctags -R .<CR>


nmap <leader>1 :1tabn<CR>
nmap <leader>2 :2tabn<CR>
nmap <leader>3 :3tabn<CR>
nmap <leader>4 :4tabn<CR>
nmap <leader>5 :5tabn<CR>
nmap <leader>6 :6tabn<CR>
nmap <leader>7 :7tabn<CR>
nmap <leader>8 :8tabn<CR>
nmap <leader>9 :9tabn<CR>
no   <leader>a q:
no   <leader>cd :tcd %:h<CR>
map  <leader>C :call Toggle_chrosshairs()<CR>
map  <leader>ed :e <C-R>=expand("%:p:h") . "/" <CR>

"fzf binding >
no   <leader>f :Files<CR>
no   <leader>: :History:<CR>
no   <leader>t :Tags<CR>
vn   <leader>w :call RgVisual()<CR>
"fzf binding ^
no   <leader>j<Space> :bd!<CR>
no   <leader>jj :Pyja 
no   <leader>jp :Pyre 
nmap <leader>js mzi<CR><Esc>'z
nmap <leader>x :qa!<CR>
nmap <leader>\ :TagbarToggle<CR>


map  ]l :lnext<CR>
map  [l :lprev<CR>

no   \0 :set syntax=none<CR>
no   \1 :TabooRename 
no   \c /fzalnlsdndglksa<CR>
let g:lt_location_list_toggle_map = '\e'
let g:lt_quickfix_list_toggle_map = '<C-`>'
"Valloric/ListToggle
"no   \e :lopen 8<CR>
no   \f :let @+ = expand('%:t')<CR>
map  \g :Gstatus<CR>
no  \h :QuickhlManualAdd! 
no   \a :let @+ = expand('%:p')<CR>
no   \s :%s:::g<Left><Left><Left>
no   \t :NeomakeSh ctags -R . --language-force=Python<CR>
nmap \\ :call MyTagbarOpen()<CR>

map  \' :setlocal foldmethod=indent<CR>
no   \` :%s:::cg<Left><Left><Left><Left>

map <M-a> <esc>ggVG
map <M-/> <esc>ggVG=
map <M-t> <esc>:DeleteTrailingW<CR>

vn   <silent> y y:call ClipboardYank()<cr>
vn   <silent> d d:call ClipboardYank()<cr>
nn   <silent> p :call ClipboardPaste()<cr>p

source ~/.config/nvim/keys-indentwise.vim
"already: source ~/.config/nvim/vim-easymotion.vim
