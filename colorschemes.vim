if has('nvim')
  set termguicolors
endif
set background=dark

let g:sonokai_style = 'atlantis'
let g:sonokai_enable_italic = 1
color sonokai
set relativenumber
set number
set colorcolumn=88

" neovide setup
set guifont=Hack:h12
let g:neovide_cursor_vfx_mode = "sonicboom"
let g:neovide_refresh_rate=60

" the two below are used by denite search
hi Comment term=bold ctermfg=Cyan guifg=#eeeeee guibg=#000000
let g:comment_bright = 1
hi LineNr          guifg=#BCBCBC guibg=#3B3A32
highlight Cursor guifg=white guibg=black
hi CursorLine                    guibg=#3E3D32
hi CursorLineNr    guifg=#FD971F               gui=none
hi Visual guifg=#aaaaaa guibg=#222222
hi Search  guifg=#ffffff guibg=#0000aa gui=underline
hi ColorColumn ctermbg=Cyan guibg=#333333
hi MatchParen guibg=gray  guifg=white

hi TabLineFill guifg=LightGreen guibg=DarkGrey
hi TabLine guifg=Grey guibg=Black
hi TabLineSel guifg=White guibg=Black
"let g:material_style='palenight'
let g:airline_theme='powerlineish'

let g:stealth#reveal_on_move = 0

hi Ignore guibg=#000000 guifg=#000000
hi Folded guifg=#eeeeee guibg=#000000
hi FoldColumn guibg=#444444 guifg=#00ffff
set fdc=2

hi EasyMotionTarget guifg=#00ff00

hi SmartMotionHL1 guifg=#ffff00 guibg=#000000


"
" autocomplete menu ------------------------- {{{

hi Pmenu           guifg=#5fd7ff  guibg=Grey0
hi PmenuSel        guifg=Grey93 guibg=Grey42
hi PmenuSbar                   guibg=Grey3
hi PmenuThumb      guifg=SteelBlue1
" }}}
" semshi config ---------------------------- {{{
hi semshiSelected  gui=underline  ctermfg=231 guifg=#ffffff ctermbg=161 guibg=black guifg=cyan
hi semshiParameter       ctermfg=75  guifg=#66D9EF
hi semshiImported        ctermfg=214 guifg=#FD971F cterm=bold gui=bold
hi semshiBuiltin         guifg=#AE81FF               gui=bold
hi semshiSelf            guifg=#7E8E91               gui=bold
hi semshiAttribute       guifg=#C4BE89 guibg=#000000
" }}}
" rainbow paren conf --------------------------------------------------- {{{
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['gold', 'CadetBlue1', 'chartreuse1', 'yellow', 'DeepSkyBlue1', 'magenta'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold',  'start=/</ end=/>/ fold'],
\	'separately': {
\		'*': {},
\       'html': 0,
\       'php': {
\	        'guifgs': ['gold', 'CadetBlue1', 'chartreuse1', 'yellow', 'DeepSkyBlue1', 'magenta'],
\			'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'], 
\		},
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained', 
\		},
\		'go': {
\	        'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'], 
\		},
\		'haskell': {
\			'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold', 'start=/</ end=/>/ fold'], 
\		},
\		'vim': {
\			'parentheses_options': 'containedin=vimFuncBody', 
\		},
\		'perl': {
\			'syn_name_prefix': 'perlBlockFoldRainbow', 
\		},
\		'stylus': {
\			'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'], 
\		},
\		'css': 0, 
\	}
\}
" }}}
