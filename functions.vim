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
