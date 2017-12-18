no <C-j> <C-W>j
no <C-k> <C-W>k
no <C-h> <C-W>h
no <C-l> <C-W>l

no <leader>cd :tcd %:h<CR>
map <leader>ed :e <C-R>=expand("%:p:h") . "/" <CR>

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

nmap <leader>1 :1tabn<CR>
nmap <leader>2 :2tabn<CR>
nmap <leader>3 :3tabn<CR>
nmap <leader>4 :4tabn<CR>
nmap <leader>5 :5tabn<CR>
nmap <leader>6 :6tabn<CR>
nmap <leader>7 :7tabn<CR>
nmap <leader>8 :8tabn<CR>
nmap <leader>9 :9tabn<CR>
