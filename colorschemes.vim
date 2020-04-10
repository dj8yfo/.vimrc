if has('nvim')
  set termguicolors
endif
"set guicursor=
set background=dark
color monokai-bold
set relativenumber
set number
set colorcolumn=88
hi Comment term=bold ctermfg=Cyan guifg=#ffffff guibg=#333333
hi Folded guifg=white guibg=black ctermfg=white ctermbg=black
" the two below are used by denite search
hi LineNr guifg=#00ff00 guibg=None
hi CursorLineNr guifg=#00bb00 
hi Visual guifg=#aaaaaa guibg=#222222
hi CursorLine guibg=#333333
hi Search gui=bold guifg=#00ff00 guibg=black
hi ColorColumn ctermbg=Cyan guibg=#333333
hi semshiSelected  gui=underline  ctermfg=231 guifg=#ffffff ctermbg=161 guibg=black guifg=cyan
hi semshiParameter       ctermfg=75  guifg=LightSkyBlue
hi semshiImported        ctermfg=214 guifg=LemonChiffon cterm=bold gui=bold
let g:rainbow_active = 1

let g:stealth#reveal_on_move = 0
hi Ignore guibg=#000000 guifg=#000000

hi Folded guibg=#000000 guifg=#666666
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
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained', 
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

hi EasyMotionTarget guifg=#00ff00
hi SmartMotionHL1 guifg=#00ff00 guibg=#000000

highlight Pmenu ctermbg=8 guibg=#606060 guifg=#ffffff
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

hi MatchParen guibg=gray  guifg=white
