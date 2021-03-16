" call neomake#configure#automake('nwr', 300)

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
