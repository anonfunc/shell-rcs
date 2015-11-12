my_add_path() {
  if [[ -d "$1" ]]
  then
    export PATH="$1:$PATH"
  fi
}

my_add_path $HOME/Library/Python/2.7/bin/
