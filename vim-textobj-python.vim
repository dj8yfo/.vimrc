let g:textobj_python_no_default_key_mappings = 1
call textobj#user#map('python', {
      \   'class': {
      \     'select-a': '<buffer>aC',
      \     'select-i': '<buffer>iC',
      \     'move-n': '<buffer>]pc',
      \     'move-p': '<buffer>[pc',
      \   },
      \   'function': {
      \     'select-a': '<buffer>af',
      \     'select-i': '<buffer>if',
      \     'move-n': '<buffer>]pf',
      \     'move-p': '<buffer>[pf',
      \   }
      \ })

"onoremap af :<c-u>execute "normal! ?def\r:nohlsearch\rv/def\rkg_"<cr>
"xnoremap af :<c-u>execute "normal! ?def\r:nohlsearch\rv/def\rkg_"<cr>
