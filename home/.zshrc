source "${HOME}/.zsh.d/zgen/zgen.zsh"
ZGEN_RESET_ON_CHANGE=("${HOME}/.zshrc")
ZGEN_RESET_ON_CHANGE+=("${HOME}/.zsh.d/my-misc/"*)
ZGEN_RESET_ON_CHANGE+=("${HOME}/.zsh.d/my-work/"*)

if ! zgen saved
then
  echo "Creating a zgen save"

  # mine
  zgen load ${HOME}/.zsh.d/my-misc
  zgen load ${HOME}/.zsh.d/my-work

  # misc
  zgen load zsh-users/zsh-syntax-highlighting

  zgen load djui/alias-tips
  zgen load oz/safe-paste
  #zgen load marzocchi/zsh-notify
  zgen load hchbaw/zce.zsh
  bindkey "^Xj" zce

  # Prompt
  zgen load kasperisager/zsh-pure pure

  # save
  zgen save
fi

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
