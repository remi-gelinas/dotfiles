set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smarttab
set clipboard+=unnamedplus
set number

inoremap <special> jk <ESC>

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Enable folding
set foldmethod=indent
set foldlevel=99

" Bindings
let mapleader=" "
nnoremap <SPACE> <Nop>
