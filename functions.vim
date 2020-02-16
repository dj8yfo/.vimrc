function! s:getchar() abort
  redraw | echo 'Press any key: '
  let c = getchar()
  while c ==# "\<CursorHold>"
    redraw | echo 'Press any key: '
    let c = getchar()
  endwhile
  redraw | echomsg printf('Raw: "%s" | Char: "%s"', c, nr2char(c))
endfunction
command! GetChar call s:getchar()

function! s:delete_tr_whitespace() abort
	:%s/\s\+$//e
endfunction
command! DeleteTrailingW call s:delete_tr_whitespace()

function! ClipboardYank()
"https://github.com/neovim/neovim/issues/583#issuecomment-40942281
  call system('xclip -sel clip -i', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -sel clip -o')
endfunction

function! Toggle_chrosshairs() abort
	:set cursorline!
	:set cursorcolumn!
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

function! DumpBindings() abort
	redir! > $HOME/vim_bind.txt
	silent nmap
	silent imap
	redir END
endfunction

function! s:pyre_search(search) abort
	15new
	Mktemp
	echo a:search
	execute "read !pyre " . a:search
endfunction

function! JupyterAll() abort
	tabnew
	Mktemp
	execute "read !ps -e -o command | grep jupyter | grep kernel"
endfunction


function! LineTabFile() abort
	let l:line = line(".")
	execute "tabedit +" . l:line . " %"
endfunction

function! s:pyre_jaunt(search) abort
	execute "!pyjau " . a:search
endfunction
command! -nargs=1 Pyre  call <SID>pyre_search(<f-args>)
command! -nargs=1 Pyja  call <SID>pyre_jaunt(<f-args>)
command! Jsf %!python -m json.tool


function! FoldCurrentFile(column) abort
	let l:tmpfile = trim(system("mktemp"))
	execute '!cat % | fold -s -w ' . a:column . ' > ' . l:tmpfile
	let l:curfile = expand('%:p')
	execute '!cat ' . l:tmpfile . ' > ' . l:curfile
endfunction

function! MyTagbarOpen() abort
	let g:tagbar_show_linenumbers = 2
	let g:tagbar_ctags_bin ="/usr/bin/ctags"
	execute 'TagbarOpen fj'
endfunction

function! HideHashComments() abort
	"zi to toggle stuff
	set fdm=expr
	set fde=getline(v:lnum)=~'^\\s#'?1:getline(prevnonblank(v:lnum))=~'^\\s#'?1:getline(nextnonblank(v:lnum))=~'^\\s*#'?1:0
endfunction

function! RgVisual() abort
let temp = @z
norm gv"zy
	execute "Rg " . escape(@z, "*[](){}\\")
let @z = temp
endfunction

function! RgClip() abort
	execute "Rg " . escape(@",  "*[](){}\\")
endfunction

function! UnstackVisual() abort
norm gvy
UnstackFromClipboard
endfunction

function! GitGutterRefresh() abort
GitGutterToggle
GitGutterToggle
endfunction
