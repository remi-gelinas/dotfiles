set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
set clipboard+=unnamedplus
set number

inoremap <special> jk <ESC>

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Enable folding
set foldmethod=indent
set foldlevel=99
