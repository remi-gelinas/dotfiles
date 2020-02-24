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
  lsp.tsserver.setup({
    cmd = { "typescript-language-server", "--stdio" }
  })
.
endif

" fzf.vim
set rtp+=/usr/local/opt/fzf

" lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }


