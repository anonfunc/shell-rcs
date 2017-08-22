if [[ $(uname) == Darwin ]]
then
  alias ls='ls -G'
else
  alias ls='ls --color'
fi

alias wco='work checkout'
alias wr='work repl'
alias wb='work build'
alias wst='work status'
