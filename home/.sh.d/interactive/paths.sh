my_add_path() {
  if [[ -d "$1" ]]
  then
    export PATH="$1:$PATH"
  fi
}

my_add_path $HOME/Library/Python/2.7/bin
my_add_path $HOME/.local/bin
my_add_path $HOME/bin
my_add_path /Applications/Emacs.app/Contents/MacOS/bin
my_add_path /usr/local/bin

if [[ -f /Applications/Emacs.app/Contents/MacOS/Emacs ]]
then
  alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
fi
