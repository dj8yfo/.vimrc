call neomake#configure#automake('nwr', 300)

"python linters: 
"pip install frosted pep8 flake8 pyflakes pylama pylint py3kwarn
let g:neomake_python_enabled_makers = ['flake8', 'pyflakes', 'python', 'frosted',
			\ 'pylama', 'pylint']

let g:neomake_python_pylint_maker = {
  \ 'args': [
  \ '--rcfile=~/.pylintrc',
  \ '-f', 'text',
  \ '--msg-template="{path}:{line}:{column}:{C}: [{symbol}] {msg}"',
  \ '-r', 'n'
  \ ],
  \ 'errorformat':
  \ '%A%f:%l:%c:%t: %m,' .
  \ '%A%f:%l: %m,' .
  \ '%A%f:(%l): %m,' .
  \ '%-Z%p^%.%#,' .
  \ '%-G%.%#',
  \ }

autocmd! BufWritePost * Neomake
let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}
let g:neomake_go_enabled_makers = neomake#makers#ft#go#EnabledMakers()
let g:neomake_go_golangci_lint_maker = {
    \ 'exe': 'golangci-lint',
    \ 'args': ['run', '--out-format=line-number', '--print-issued-lines=false'],
    \ 'output_stream': 'stdout',
    \ 'append_file': 0,
    \ 'cwd': '%:h',
    \ 'errorformat':
        \ '%f:%l:%c: %m,' .
        \ '%f:%l: %m'
    \ }

" \ '--config', './.golangci.yml'
" \ ],
