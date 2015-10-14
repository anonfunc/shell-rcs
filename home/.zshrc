source "${HOME}/.zsh.d/zgen/zgen.zsh"
ZGEN_RESET_ON_CHANGE=("${HOME}/.zshrc" "${HOME}/.zsh.d/my-misc/"*)

if ! zgen saved
then
  echo "Creating a zgen save"
  # prezto options
  zgen prezto editor key-bindings 'emacs'
  zgen prezto editor info:completing '...'
  zgen prezto prompt theme 'peepcode'

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

  # should be last
  zgen prezto prompt

  # mine
  zgen load .zsh.d/my-misc


  # misc
  #zgen load jimmijj/zsh-syntax-highlighting
  #zgen load tarruda/zsh-autosuggestions

  zgen load djui/alias-tips
  zgen load oz/safe-paste
  zgen load marzocchi/zsh-notify
  zgen load hchbaw/zce.zsh
  bindkey "^Xj" zce

  if [[ $(uname) == Darwin ]]
  then
    zgen prezto homebrew
    zgen prezto osx

  fi

  if hash fzf 2>/dev/null
  then
    zgen load b4b4r07/enhancd
  fi


  # save
  zgen save
fi
