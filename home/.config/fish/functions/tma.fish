function tma
    # cd home
    cd
    # Deactivate virtualenv if active
    if test -n "$VIRTUAL_ENV"
      deactivate
    end

  # How many sessions active?
  # Create a sync'd client session OR create a master session.
  if tmux list-sessions 2> /dev/null | grep -q home > /dev/null
    # Is home attached?
    if tmux list-sessions | grep home: | grep -q attached
      # Attach a new client
      tmux -2 new-session -d -t home -s "client-%self" \;\
      set-option destroy-unattached \; \
      attach-session -t "client-%self"
    else
      # Attach to home.  Home isn't auto-detached, so this isn't perfect.
      tmux -2 attach-session -t home
    end
  else
    tmux -2 new-session -s home
  end
end
