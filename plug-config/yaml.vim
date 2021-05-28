augroup yaml_indent
    autocmd BufRead,BufNewFile *.yaml silent setlocal expandtab
    autocmd BufRead,BufNewFile *.yaml silent setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup end
