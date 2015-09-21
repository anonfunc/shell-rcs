source "${HOME}/.zsh.d/zgen/zgen.zsh"
ZGEN_RESET_ON_CHANGE=("${HOME}/.zshrc")

if ! zgen saved
then
  echo "Creating a zgen save"
  # prezto options
  zgen prezto editor key-bindings 'emacs'

  # prezto modules
  zgen prezto
  zgen prezto environment
  zgen prezto terminal
  zgen prezto editor
  zgen prezto history
  zgen prezto directory
  zgen prezto spectrum
  zgen prezto utility
  zgen prezto completion
  zgen prezto history-substring-search
  zgen prezto git
  zgen prezto command-not-found
  zgen prezto syntax-highlighting

  # should be last
  zgen prezto prompt

  # misc
  zgen load djui/alias-tips

  if [[ $(uname) == Darwin ]]
  then
    zgen prezto homebrew
    zgen prezto osx

  fi

  # save
  zgen save
fi

