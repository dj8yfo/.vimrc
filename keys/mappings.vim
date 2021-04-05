nmap \n mzi<CR><Esc>`z
map <F7> :set wrap!<CR>
map <F8> :call AutoPairsToggle()<CR>


nmap <M-q> :ll<cr>
nmap <M-t> :cc<cr>
inor <C-b> <Left>
inor <C-f> <Right>
nnoremap \x *``cgn
imap <C-\> <Esc>u

nmap ]<Space> o<Esc>k
nmap [<Space> O<Esc>j
map <M-a> <esc>ggVG
let g:lt_location_list_toggle_map = '\e'
let g:lt_quickfix_list_toggle_map = '\z'

map <F12> 20zl
map <F11> 20zh
"Valloric/ListToggle
map <F5> :PatSearch 
noremap H _
noremap L $
no   <M-j> <C-W>j
no   <M-k> <C-W>k
no   <M-h> <C-W>h
no   <M-l> <C-W>l

nnoremap gp `[v`]
map <M-r> :e!<CR>
map <M-f> :w!<CR>

map  ]a :lnext<CR>
map  [a :lprev<CR>
map  ]b :cnext<CR>
map  [b :cprev<CR>

nnoremap gp `[v`]
map <M-r> :e!<CR>

nnoremap   \a :let @+ = expand('%:p')<CR>
nnoremap   \f :let @+ = expand('%:t')<CR>
nnoremap   \s :let @+ = expand('%:p:h')<CR>
nnoremap <silent>  <C-q> :clo<CR>
nmap <C-x> :qa!<CR>
" Basic Key Mappings

" variant 1
" g Leader key
let mapleader=" "
nnoremap <Space> <Nop>
" ----------------------

" variant 2
" let mapleader = "\<Space>"
" let maplocalleader = "\<Space>"
" ----------------------

" Better indenting
vnoremap < <gv
vnoremap > >gv


" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>

" Use alt + hjkl to resize windows
" nnoremap <silent> <M-j>    :resize -2<CR>
" nnoremap <silent> <M-k>    :resize +2<CR>
" nnoremap <silent> <M-h>    :vertical resize -2<CR>
" nnoremap <silent> <M-l>    :vertical resize +2<CR>

nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

let g:elite_mode=0                      " Disable arrows"
" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <C-Up>    :resize -2<CR>
    nnoremap <C-Down>  :resize +2<CR>
    nnoremap <C-Left>  :vertical resize -2<CR>
    nnoremap <C-Right> :vertical resize +2<CR>
endif

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
