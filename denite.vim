call denite#custom#var('file_rec', 'command',
	\ ['rg', '--files', '--hidden'])
" Change mappings.

autocmd FileType denite call s:denite_my_settings()

function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <C-s>
  \ denite#do_map('do_action', 'split')
  nnoremap <silent><buffer><expr> <C-y>
  \ denite#do_map('do_action', 'tabswitch')
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
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
nn <Leader>z :Denite file/rec<CR>
vn <Leader>z :<C-U>call denite#visual('file/rec')<CR>
no \z :Denite -default-action=tabswitch file/rec<CR>
nn <Leader>q :Denite -no-empty  grep <CR>
vn <Leader>q :<C-U>call denite#visual('grep')<CR>
no \q :DeniteCursorWord -no-empty  grep<CR>
no <Leader>T :Denite tag<CR>
no <Leader>o :Denite outline<CR>
no \r :Denite -resume<CR>
no <Leader>/ :Denite line<CR>
vn <Leader>/ :<C-U>call denite#visual('line')<CR>
no <Leader>+ :Denite colorscheme<CR>

no <Leader>y :Denite neoyank<CR>
no <Leader>c :Denite command_history<CR>
no \c :Denite command_history -default-action=edit_and_execute<CR>
function! denite#visual(source) abort
let temp = @z
norm gv"zy
	call denite#start([{'name': a:source, 'args': []}], 
				\{"input": escape(@z, "*[](){}\\"),
				\"empty":0})
let @z = temp
endfunction
