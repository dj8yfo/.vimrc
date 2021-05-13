call denite#custom#var('file_rec', 'command',
	\ ['rg', '--files', '--hidden'])
" Change mappings.

augroup denite_my
    autocmd FileType denite call s:denite_my_settings()
augroup end

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
call denite#custom#source(
\ 'file_rec', 'matchers', ['matcher_fuzzy'])

call denite#custom#source(
\ 'file_rec', 'sorters', ['sorter_sublime'])

" Ripgrep command on grep source
call denite#custom#var('grep', 'command', ['rg', '--hidden'])
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

no \q :DeniteCursorWord -no-empty  grep<CR>
no \r :Denite -resume<CR>

nn <Leader>q :Denite -no-empty  grep <CR>
" no <Leader>/ :Denite line<CR>
" vn <Leader>/ :<C-U>call denite#visual('line')<CR>

no gm :Denite -resume -cursor-pos=+1 -immediately<CR>
no gb ::Denite -resume -cursor-pos=-1 -immediately<CR>

function! denite#visual(source) abort
let temp = @z
norm gv"zy
	call denite#start([{'name': a:source, 'args': []}], 
				\{"input": escape(@z, "*[](){}\\"),
				\"empty":0})
let @z = temp
endfunction
