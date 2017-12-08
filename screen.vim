function! s:ScreenShellListener()
if g:ScreenShellActive
	map <Leader>vs :ScreenSend<cr>
	nmap <C-c><C-x> :ScreenQuit<cr>
else
	map <Leader>vs :ScreenShell<cr>
endif
endfunction

map <Leader>vs :ScreenShell<cr>
augroup ScreenShellEnter
	autocmd User * call <SID>ScreenShellListener()
	augroup END
augroup ScreenShellExit
	autocmd User * call <SID>ScreenShellListener()
	augroup END
