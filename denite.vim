call denite#custom#var('file_rec', 'command',
	\ ['rg', '--files', '--hidden'])
" Change mappings.
call denite#custom#map(
\ 'insert',
\ '<C-j>',
\ '<denite:move_to_next_line>',
\ 'noremap'
\)
call denite#custom#map(
\ 'insert',
\ '<C-k>',
\ '<denite:move_to_previous_line>',
\ 'noremap'
\)

if !dein#check_install(['cpsm'])
	call denite#custom#source(
	\ 'file_rec', 'matchers', ['matcher_cpsm'])
else
	call denite#custom#source(
	\ 'file_rec', 'matchers', ['matcher_fuzzy'])
endif

no <Leader>b :Denite buffer<CR>
no <Leader>z :Denite file_rec<CR>

