function cdw() {
  local WORKSPACE
  cd ~/workspace
  WORKSPACE=$(ls */.workspace | cut -d/ -f 1 | fzf)
  cd ${WORKSPACE}
}
