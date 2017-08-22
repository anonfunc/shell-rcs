function act {
  source "$(find ${1:-.} -name 'activate' | head -1)"
}

