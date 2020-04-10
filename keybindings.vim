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
imap <C-l> <Esc>lxi
imap <C-]> <Esc>ui<Right>


map <M-h> <Plug>(snipe-F)
map <M-l> <Plug>(snipe-f)
map <M-y> y$
nmap <leader><leader>a <Plug>(snipe-f-a)

cmap <C-g> <Left>
inor <C-b> <Left>
vmap <C-b> :!black -q -<CR>
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
map <leader>= :NERDTreeToggle<CR>

"fzf binding >
no   <leader>f :Files<CR>
vmap <leader>hv <Plug>(quickhl-manual-this)
no   <leader>v :Buffers<CR>
no   <leader>: :History:<CR>
no   <leader>$ :call GitGutterRefresh()<CR>
no   <leader>t :Tags<CR>
vn   <leader>w :call RgVisual()<CR>
no   <leader>W :call RgClip()<CR>
"fzf binding ^
no   <leader>j<Space> :bd!<CR>
no   <leader>jj :Pyja 
no   <leader>jp :Pyre 
vmap   <leader>jp :<C-U>call Pyre_visual()<CR>
nmap <leader>js mzi<CR><Esc>'z
nmap <M-x> :qa!<CR>
nmap <leader>\ :TagbarToggle<CR>
nnoremap <f1> :echo synIDattr(synID(line('.'), col('.'), 0), 'name')<cr>
nnoremap <f2> :echo ("hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">")<cr>
nnoremap <f3> :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<cr>
"nnoremap <f4> :exec 'syn list '.synIDattr(synID(line('.'), col('.'), 0), 'name')<cr>
map <F4> :CocDisable<CR>
map <F6> 20zl " Scroll 20 characters to the right
map <F5> 20zh " Scroll 20 characters to the left
map <F7> :set wrap!<CR>

map <F10> :Stealth<CR>
map <F11> :PatSearch
map <F12> :Autoformat<CR>
" move whole line up/DOWN

nmap - ddkP
nmap + ddp
set tildeop
imap <M-g> <Esc>~awea
nmap gcw ~awe

map  ]l :lnext<CR>
map  [l :lprev<CR>

no   \0 :set syntax=none<CR>
no   \1 :TabooRename
no   \5 :call LineTabFile()<CR>
no   \c :tabclose<CR>
no   \= /fzalnlsdndglksa<CR>
let g:lt_location_list_toggle_map = '\e'
let g:lt_quickfix_list_toggle_map = '<C-`>'
"Valloric/ListToggle

vn   \u :call UnstackVisual()<CR>
"no   \e :lopen 8<CR>
no   \f :let @+ = expand('%:t')<CR>
map  \g :Gstatus<CR>
no  \h :QuickhlManualAdd!
no   \a :let @+ = expand('%:p')<CR>
no   \s :%s:::g<Left><Left><Left>
no   \t :BTags<CR>
nmap \\ :call MyTagbarOpen()<CR>
nnoremap <leader>x *``cgn

map  \' :setlocal foldmethod=indent<CR>
no   \` :%s:::cg<Left><Left><Left><Left>

map <M-a> <esc>ggVG
map <M-/> <esc>ggVG=
map <M-t> <esc>:ALEFix<CR>

vn   <silent> y y:call ClipboardYank()<cr>
vn   <silent> d d:call ClipboardYank()<cr>
nn   <silent> p :call ClipboardPaste()<cr>p

source ~/.config/nvim/keys-indentwise.vim
"already: source ~/.config/nvim/vim-easymotion.vim
