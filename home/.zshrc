source <(antibody init)

fpath=("/usr/local/linkedin/etc/zsh" "/export/content/linkedin/etc/zsh" $fpath)

antibody bundle <<EOF
mafredri/zsh-async # First
djui/alias-tips
junegunn/fzf
supercrabtree/k
Tarrasch/zsh-autoenv
Tarrasch/zsh-bd
Tarrasch/zsh-colors
sindresorhus/pure
$HOME/.zsh.d/my-misc
$HOME/.zsh.d/my-work
zsh-users/zsh-completions
zsh-users/zsh-autosuggestions
zdharma/fast-syntax-highlighting # Last
EOF

autoload -U compinit && compinit

