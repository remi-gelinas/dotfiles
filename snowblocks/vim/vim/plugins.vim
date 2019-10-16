set runtimepath+=$HOME/.vim/
set packpath^=$HOME/.vim

packadd minpac

if !exists('*minpac#init')
else
    call minpac#init()

    if has('nvim')
      call minpac#add('Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' })
    else
      call minpac#add('Shougo/defx.nvim')
      call minpac#add('roxma/nvim-yarp')
      call minpac#add('roxma/vim-hug-neovim-rpc')
    endif

    call minpac#add('neoclide/coc.nvim', { 'branch': 'release' })
    call minpac#add('itchyny/lightline.vim')
    call minpac#add('ryanoasis/vim-devicons')
    call minpac#add('junegunn/fzf.vim')
    call minpac#add('scrooloose/nerdcommenter')
    call minpac#add('rhysd/git-messenger.vim')
    call minpac#add('tpope/vim-fugitive')
    call minpac#add('reasonml-editor/vim-reason-plus')
    call minpac#add('elixir-editors/vim-elixir')
    call minpac#add('mhinz/vim-mix-format')
    call minpac#add('arcticicestudio/nord-vim')
    call minpac#add('mhinz/vim-signify')
    call minpac#add('christoomey/vim-tmux-navigator')
    call minpac#add('cespare/vim-toml')
endif

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
