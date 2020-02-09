" vim
set updatetime=300
colorscheme nord

" neovim
if has('nvim')

  " Engage LSPs
  packadd nvim-lsp

  lua <<
  lsp = require'nvim_lsp'

  lsp.rust_analyzer.setup({})
.
endif

" fzf.vim
set rtp+=/usr/local/opt/fzf

" lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" vim-mix-format
let g:mix_format_on_save = 1

" ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
