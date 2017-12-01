call neomake#configure#automake("w")

"python linters: 
"pip install frosted pep8 flake8 pyflakes pylama pylint py3kwarn
let g:neomake_python_enabled_makers = ['pep8', 'flake8', 'pyflakes', 'python', 'frosted',
			\ 'pylama', 'pylint', 'py3kwarn']
