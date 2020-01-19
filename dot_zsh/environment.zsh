# Load custom shell functions

fpath=($HOME/.zsh/functions $fpath)
for func ($HOME/.zsh/functions/*) autoload $func

# Load prompts

fpath=($HOME/.zsh/prompts $fpath)
autoload -Uz promptinit; promptinit

# System config
export LANG="en_CA.UTF-8"

# Set default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# GPG
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)


# Cargo
export CARGO_HOME=$HOME/.cargo
export PATH=$CARGO_HOME/bin:$PATH

# asdf-vm
# TODO: Investigate making this cross-platform for Linux. Currently this only supports Homebrew, which has iffy package parity in Linux
. $(brew --prefix asdf)/asdf.sh
