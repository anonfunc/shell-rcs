function tma () {
  # cd home
  cd
  # Deactivate virtualenv if active
  if [[ -n "$VIRTUAL_ENV" ]]
  then
    deactivate
  fi

  # How many sessions active?
  # Create a sync'd client session OR create a master session.
  if tmux list-sessions 2> /dev/null | grep -q home > /dev/null
  then
    # Is home attached?
    if tmux list-sessions | grep home: | grep -q attached
    then
      # Attach a new client
      tmux -2 new-session -d -t home -s "client-%self" \;\
        set-option destroy-unattached \; \
        attach-session -t "client-%self"
    else
      # Attach to home.  Home isn't auto-detached, so this isn't perfect.
      tmux -2 attach-session -t home
    fi
  else
    tmux -2 new-session -s home
  fi
}
