" vim
set updatetime=300
colorscheme nord

" neovim
if has('nvim')

  " Engage LSPs
  packadd nvim-lsp

  lua <<
  lsp = require'nvim_lsp'

  lsp.rls.setup({})
  lsp.tsserver.setup({
    cmd = { "typescript-language-server", "--stdio" }
  })
  lsp.vimls.setup({})
.
endif

" fzf.vim
set rtp+=/usr/local/opt/fzf

" lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" ALE
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

let g:ale_sign_error = '✘'
let g:ale_sign_warning = ''
