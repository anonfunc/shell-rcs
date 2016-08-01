mkdir -p ~/.logs

autoload -U add-zsh-hook

logging_preexec() {
  if [[ ! -f ~/.logs/shell-history-$(date "+%Y-%m-%d").log ]]
  then
    touch ~/.logs/shell-history-$(date "+%Y-%m-%d").log
  fi
  echo "zsh: $(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $1" >> ~/.logs/shell-history-$(date "+%Y-%m-%d").log
}
if [[ "$(id -u)" != 0 ]]
then
  add-zsh-hook preexec logging_preexec
fi
