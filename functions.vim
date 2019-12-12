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

command! Mktemp exe 'edit' . system("mktemp")

function! DumpBindings() abort
	redir > $HOME/vim_bind.txt
	silent nmap
	silent imap
	redir END
endfunction
