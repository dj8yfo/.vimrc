let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
" or maybe...
let g:slime_default_config = {"socket_name": "default", "target_pane": "{down-of}"}
let g:slime_python_ipython = 1
let g:slime_no_mappings = 1
xmap <M-;> <Plug>SlimeRegionSend
nmap <M-;> <Plug>SlimeMotionSend
nmap <M-w> <Plug>SlimeLineSend
