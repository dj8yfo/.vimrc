call denite#custom#var('file_rec', 'command',
	\ ['rg', '--files', '--hidden'])
" Change mappings.

call denite#custom#map(
\ 'insert',
\ '<C-y>',
\ '<denite:do_action:tabswitch>',
\ 'noremap'
\)

call denite#custom#map(
\ 'insert',
\ '<C-s>',
\ '<denite:do_action:split>',
\ 'noremap'
\)

if !dein#check_install(['cpsm'])
	"https://github.com/nixprime/cpsm
	"osx
"env PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install 3.6.3
	"linux
"env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 3.6.3
	call denite#custom#source(
	\ 'file_rec', 'matchers', ['matcher_cpsm'])
else
	call denite#custom#source(
	\ 'file_rec', 'matchers', ['matcher_fuzzy'])
endif

call denite#custom#source(
\ 'file_rec', 'sorters', ['sorter_sublime'])

" Ripgrep command on grep source
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
	\ ['--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

call denite#custom#source(
\ 'grep', 'sorters', ['sorter_selecta'])
call denite#custom#source('grep', 'converters', ['converter_abbr_word'])
call denite#custom#source('grep', 'matchers', ['matcher_regexp'])

no <Leader>b :Denite buffer:!<CR>
no \b :Denite -default-action=tabswitch buffer:!<CR>
no <Leader>z :Denite file_rec<CR>
no \z :Denite -default-action=tabswitch file_rec<CR>
nn <Leader>q :Denite -no-empty -auto-highlight grep <CR>
vn <Leader>q :<C-U>call denite#visual()<CR>
no \q :DeniteCursorWord -no-empty -auto-highlight grep<CR>
no <Leader>t :Denite -auto-highlight tag<CR>
no \r :Denite -resume<CR>
no <Leader>/ :Denite -auto-highlight line<CR>

no <Leader>y :Denite neoyank<CR>
no <Leader>c :Denite command_history -default-action=edit_and_execute<CR>
function! denite#visual() abort
let temp = @z
norm gv"zy
	call denite#start([{'name': 'grep', 'args': []}], {"input": escape(@z, "*[](){}\\")})
let @z = temp
endfunction
