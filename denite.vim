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
	call denite#custom#source(
	\ 'file_rec', 'matchers', ['matcher_cpsm'])
else
	call denite#custom#source(
	\ 'file_rec', 'matchers', ['matcher_fuzzy'])
endif

" Ripgrep command on grep source
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
	\ ['--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

no <Leader>b :Denite buffer:!<CR>
no \b :Denite -default-action=tabswitch buffer:!<CR>
no <Leader>z :Denite file_rec<CR>
no \z :Denite -default-action=tabswitch file_rec<CR>
no <Leader>q :Denite -no-empty grep<CR>
no \q :DeniteCursorWord -no-empty grep<CR>
no <Leader>t :Denite tag<CR>

no <Leader>y :Denite neoyank<CR>
no <Leader>c :Denite command_history -default-action=edit_and_execute<CR>
