" rainbow paren conf --------------------------------------------------- {{{
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['gold', 'CadetBlue1', 'chartreuse1', 'yellow', 'DeepSkyBlue1', 'magenta'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': ['bold'],
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
        \	'guifgs': ['gold', 'CadetBlue1', 'chartreuse1', 'yellow', 'DeepSkyBlue1', 'magenta'],
\	        'parentheses': [ 'start=/{/ end=/}/ fold'],
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
