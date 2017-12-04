no <C-j> <C-W>j
no <C-k> <C-W>k
no <C-h> <C-W>h
no <C-l> <C-W>l
nn <C-\> <C-W>_

no <leader>cd :tcd %:h<CR>
map <leader>ed :e <C-R>=expand("%:p:h") . "/" <CR>
