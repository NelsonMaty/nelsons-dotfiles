# homebrew
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH

# golang
export GOPATH=$HOME/Projects/golang
export PATH=$PATH:$GOPATH/bin

# inherited bash paths
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH

# node version manager
source ~/.nvm/nvm.sh

# do not require to write cd every time
setopt auto_cd

# LSD
alias ls='lsd'
alias l='ls -FL'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias lta='ls --tree -a'

# enhanced tools
alias vim='nvim'
alias cat='bat'

# git
alias g='git'
alias gs='git status'
alias gss='git status --short'
alias gcd='git checkout'
alias gcm='git checkout main' 
alias gclear='git fetch --prune && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D'

# tmux
alias t='tmux'
alias ta='tmux attach -t'
alias tk='tmux kill-session -a'
alias tl='tmux ls'
alias tn='tmux new-session -s'

# initialize starship
eval "$(starship init zsh)"

# bun completions
#[ -s "/Users/nelson/.bun/_bun" ] && source "/Users/nelson/.bun/_bun"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# shell gpt utilities
generate_commit_message() {
  git_diff=$(git diff --staged)
  if [[ -n $git_diff ]]; then
    sgpt_message=$(echo "$git_diff" | sgpt "Generate commit message, for my changes, be clear and informative, in 80 characters or less, start with a verb")
    echo "- $sgpt_message" 
    echo "🙂 Is it OK? [Y/n]"
    read REPLY
    if [[ $REPLY =~ ^[Nn]$ ]]; then
      echo "🙅 Operation cancelled"
    else
      git commit -m "$sgpt_message"
      echo "👍 Commit done"
    fi
  else
    echo "😓 There are no staged changes"
  fi
}

alias gc=generate_commit_message

# Start the tmux session if not alraedy in the tmux session
if [[ ! -n $TMUX  ]]; then
  # Get the session IDs
  session_ids="$(tmux list-sessions)"

  # Create new session if no sessions exist
  if [[ -z "$session_ids" ]]; then
    tmux new-session
  fi

  # Select from following choices
  #   - Attach existing session
  #   - Create new session
  #   - Start without tmux
  create_new_session="⚡️ Create new session"
  start_without_tmux="💻 Start without tmux"
  choices="$session_ids\n${create_new_session}:\n${start_without_tmux}:"
  choice="$(echo $choices | fzf | cut -d: -f1)"

  if expr "$choice" : "[0-9]*$" >&/dev/null; then
    # Attach existing session
    tmux attach-session -t "$choice"
  elif [[ "$choice" = "${create_new_session}" ]]; then
    # Create new session
    tmux new-session
  elif [[ "$choice" = "${start_without_tmux}" ]]; then
    # Start without tmux
    :
  fi
fi
