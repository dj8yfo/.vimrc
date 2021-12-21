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
        hi TSComment term=bold ctermfg=Cyan guifg=#75715E guibg=#272822
        hi Folded guibg=#000000 guifg=#555555
    else
        let g:comment_bright = 1
        hi TSComment term=bold ctermfg=Cyan guifg=#eeeeee guibg=#000000
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

function! s:FindNextSyntax(lnum, col, name)
    let l:col = a:col
    let l:step = 1
    while synIDattr(synID(a:lnum, l:col, 1), 'name') !=# a:name
        let l:col += l:step
    endwhile
    return [a:lnum, l:col]
endfunction

function! s:FindCornerOfSyntax(lnum, col, step)
    let l:col = a:col
    let l:syn = synIDattr(synID(a:lnum, l:col, 1), 'name')
    while synIDattr(synID(a:lnum, l:col, 1), 'name') ==# l:syn
        let l:col += a:step
    endwhile
    return l:col - a:step
endfunction

function! s:FindCornersOfSyntax(lnum, col)
    return [<sid>FindLeftOfSyntax(a:lnum, a:col), <sid>FindRightOfSyntax(a:lnum, a:col)]
endfunction

function! s:FindRightOfSyntax(lnum, col)
    return <sid>FindCornerOfSyntax(a:lnum, a:col, 1)
endfunction

function! s:FindLeftOfSyntax(lnum, col)
    return <sid>FindCornerOfSyntax(a:lnum, a:col, -1)
endfunction

function! s:Markdown_GetUrlForPosition(lnum, col)
    let l:lnum = a:lnum
    let l:col = a:col
    let l:syn = synIDattr(synID(l:lnum, l:col, 1), 'name')

    if l:syn ==# 'mkdInlineURL' || l:syn ==# 'mkdURL' || l:syn ==# 'mkdLinkDefTarget'
        " Do nothing.
    elseif l:syn ==# 'mkdLink'
        let [l:lnum, l:col] = <sid>FindNextSyntax(l:lnum, l:col, 'mkdURL')
        let l:syn = 'mkdURL'
    elseif l:syn ==# 'mkdDelimiter'
        let l:line = getline(l:lnum)
        let l:char = l:line[col - 1]
        if l:char ==# '<'
            let l:col += 1
        elseif l:char ==# '>' || l:char ==# ')'
            let l:col -= 1
        elseif l:char ==# '[' || l:char ==# ']' || l:char ==# '('
            let [l:lnum, l:col] = <sid>FindNextSyntax(l:lnum, l:col, 'mkdURL')
        else
            return ''
        endif
    else
        return ''
    endif

    let [l:left, l:right] = <sid>FindCornersOfSyntax(l:lnum, l:col)
    return getline(l:lnum)[l:left - 1 : l:right - 1]
endfunction

function! HandleURLAlt()
    let s:uri = s:Markdown_GetUrlForPosition(line('.'), col('.'))
    if s:uri != ''
        silent exec "!google-chrome '". escape(s:uri,"%#!") ."'"
    else
        echomsg 'The cursor is not on a link.'
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

function! Ack_cword() abort
    exec 'Ack ' . expand("<cword>")
 endfunction

command! CargoPlay !cargo play %
