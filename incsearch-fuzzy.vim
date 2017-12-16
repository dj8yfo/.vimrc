function! s:config_easyfuzzymotion(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> z/ incsearch#go(<SID>config_easyfuzzymotion())
noremap <silent><expr> z? incsearch#go(<SID>config_easyfuzzymotion({'command': '?'}))
noremap <silent><expr> zg/ incsearch#go(<SID>config_easyfuzzymotion({'is_stay': 1}))
