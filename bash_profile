#!/bin/bash

export PATH="~/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export EDITOR=vim

source ~/src/dotfiles/bash_gitprompt
source ~/src/dotfiles/aliases

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
