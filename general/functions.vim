" Random Useful Functions

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END

function! LineTabFile() abort
	let l:line = line(".")
	execute "tabedit +" . l:line . " %"
endfunction

function! CursorPositionAt() abort
    let l:file = expand('%')
	let l:line = line(".")
    let @+ = l:file . ":" . l:line
endfunction

function! TabNuke() abort
    tabclose
endfunction


"rg command for vimgrep backend
set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:%c:%m

function! s:patsearch(search) abort
    exec 'lvimgrep /' . a:search .'/gj %'
endfunction

command! -nargs=? PatSearch  call <SID>patsearch(<f-args>)

let g:comment_bright = 0
function! ToggleCommentHIghlight() abort
    if g:comment_bright
        let g:comment_bright = 0
        hi Comment term=bold ctermfg=Cyan guifg=#75715E guibg=#272822
        hi Folded guibg=#000000 guifg=#555555
    else
        let g:comment_bright = 1
        hi Comment term=bold ctermfg=Cyan guifg=#eeeeee guibg=#000000
        hi Folded guifg=#eeeeee guibg=#000000
    endif
endfunction

function! s:mktempfunc(...) abort
    let arg = get(a:, 1, 0)
    echo arg
    if len(arg) > 1
        exe 'edit ' . trim(system("mktemp")) . '.' . arg
    else
        exe 'edit ' . trim(system("mktemp"))
    endif
endfunction

command! -nargs=? Mktemp  call <SID>mktempfunc(<f-args>)

function! SearchFileDir() abort
    let l:file = expand('%:p:h')
    execute "Files " . l:file
endfunction

function! Show_documentation()
    execute 'h '.expand('<cword>')
endfunction

function! Telescope_FF()
    lua require('telescope.builtin').find_files({find_command = {'fd', '-H'}})
endfunction

function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!google-chrome '". escape(s:uri,"%#!") ."'"
  else
    echo "No URI found in line."
  endif
endfunction

function! MyTagbarOpen() abort
	let g:tagbar_show_linenumbers = 2
	let g:tagbar_ctags_bin ="/usr/local/bin/ctags"
 
	execute 'TagbarOpen fj'
endfunction

command! Jsf %!python -m json.tool

function! ExitGoyo() abort
    Goyo
    so ~/.config/nvim/themes/nvcode.vim
endfunction

function! MyLspRestart() abort
     lua vim.lsp.stop_client(vim.lsp.get_active_clients())
     edit!
 endfunction
