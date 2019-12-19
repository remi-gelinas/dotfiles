set runtimepath+=$HOME/.vim/
set packpath^=$HOME/.vim

packadd minpac

if !exists('*minpac#init')
else
    call minpac#init()

    if has('nvim')
      call minpac#add('Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' })
      call minpac#add('nvim/nvim-lsp')

      " CoC and extensions
      call minpac#add('neoclide/coc.nvim', { 'branch': 'release' })
  
      call minpac#add('neoclide/coc-eslint', { 'do': {->system('yarn install --frozen-lockfile')} })
      call minpac#add('neoclide/coc-jest', { 'do': {->system('yarn install --frozen-lockfile')} })
      call minpac#add('neoclide/coc-prettier', { 'do': {->system('yarn install --frozen-lockfile')} })
      call minpac#add('neoclide/coc-json', { 'do': {->system('yarn install --frozen-lockfile')} })
      call minpac#add('neoclide/coc-rls', { 'do': {->system('yarn install --frozen-lockfile')} })
      call minpac#add('neoclide/coc-tslint-plugin', { 'do': {->system('yarn install --frozen-lockfile')} })
      call minpac#add('neoclide/coc-tsserver', { 'do': {->system('yarn install --frozen-lockfile')} })
      call minpac#add('josa42/coc-go', { 'do': {->system('yarn install --frozen-lockfile')} })
      call minpac#add('amiralies/coc-elixir', { 'do': {->system('yarn install --frozen-lockfile')} })
      call minpac#add('iamcco/coc-diagnostic', { 'do': {->system('yarn install --frozen-lockfile')} })
    else
      call minpac#add('Shougo/defx.nvim')
      call minpac#add('roxma/nvim-yarp')
      call minpac#add('roxma/vim-hug-neovim-rpc')
      call minpac#add("prabirshrestha/async.vim")
      call minpac#add("prabirshrestha/vim-lsp")
    endif


    call minpac#add('itchyny/lightline.vim')
    call minpac#add('ryanoasis/vim-devicons')
    call minpac#add('junegunn/fzf.vim')
    call minpac#add('scrooloose/nerdcommenter')
    call minpac#add('rhysd/git-messenger.vim')
    call minpac#add('tpope/vim-fugitive')
    call minpac#add('tpope/vim-surround')
    call minpac#add('reasonml-editor/vim-reason-plus')
    call minpac#add('elixir-editors/vim-elixir')
    call minpac#add('mhinz/vim-mix-format')
    call minpac#add('arcticicestudio/nord-vim')
    call minpac#add('mhinz/vim-signify')
    call minpac#add('christoomey/vim-tmux-navigator')
    call minpac#add('cespare/vim-toml')
    call minpac#add('leafgarland/typescript-vim')
    call minpac#add('peitalin/vim-jsx-typescript')
endif

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
