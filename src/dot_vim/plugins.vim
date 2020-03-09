set runtimepath+=$HOME/.vim/
set packpath^=$HOME/.vim

packadd minpac

if exists('*minpac#init')
    call minpac#init()

    if has('nvim')
      call minpac#add('neovim/nvim-lsp')
    else
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
    call minpac#add('tpope/vim-obsession')
    call minpac#add('reasonml-editor/vim-reason-plus')
    call minpac#add('elixir-editors/vim-elixir')
    call minpac#add('arcticicestudio/nord-vim')
    call minpac#add('mhinz/vim-signify')
    call minpac#add('christoomey/vim-tmux-navigator')
    call minpac#add('cespare/vim-toml')
    call minpac#add('leafgarland/typescript-vim')
    call minpac#add('rust-lang/rust.vim')
    call minpac#add('yuezk/vim-js')
    call minpac#add('MaxMEllon/vim-jsx-pretty')
    call minpac#add('dense-analysis/ale')
    call minpac#add('lepture/vim-jinja')
    call minpac#add('OmniSharp/omnisharp-vim')
    call minpac#add('OrangeT/vim-csharp')
endif

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
