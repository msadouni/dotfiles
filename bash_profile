#!/bin/bash

export PATH="~/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

source ~/src/dotfiles/bash_gitprompt
source ~/src/dotfiles/aliases

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

eval "$(rbenv init -)"
