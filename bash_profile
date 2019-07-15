#!/bin/bash

export LC_ALL=en_US.UTF-8

export PATH="~/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

source ~/src/dotfiles/bash_gitprompt
source ~/src/dotfiles/aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
