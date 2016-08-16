source ~/.zplug/init.zsh

# Can manage local plugins
zplug "~/.zsh.d/my-misc", from:local
zplug "~/.zsh.d/my-work", from:local
zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "kasperisager/zsh-pure"


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
