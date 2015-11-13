source "${HOME}/.zsh.d/zgen/zgen.zsh"
ZGEN_RESET_ON_CHANGE=("${HOME}/.zshrc" "${HOME}/.zsh.d/"*)

if ! zgen saved
then
  echo "Creating a zgen save"

  # mine
  zgen load .zsh.d/my-misc
  zgen load .zsh.d/my-work


  # misc
  zgen load zsh-users/zsh-syntax-highlighting

  zgen load djui/alias-tips
  zgen load oz/safe-paste
  zgen load marzocchi/zsh-notify
  zgen load hchbaw/zce.zsh
  bindkey "^Xj" zce

  zgen load kasperisager/zsh-pure pure

  if hash fzf 2>/dev/null
  then
    zgen load b4b4r07/enhancd
  fi


  # save
  zgen save
fi
