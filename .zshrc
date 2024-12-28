# Paths
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/bin:/usr/local/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"

# NVM
[ -s "$HOME/.nvm/nvm.sh" ] && \. "$HOME/.nvm/nvm.sh"

# Aliases
alias ls='lsd'
alias l='ls -FL'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree --ignore-glob "node_modules"'
alias lta='ls --tree -a --ignore-glob "node_modules"'
alias vim='nvim'
alias cat='bat'

# Git aliases
alias g='lazygit'
alias ga='git add'
alias gaa='git add .'
alias gs='git status'
alias gss='git status --short'
alias gcd='git checkout'
alias gcm='git checkout main'
alias gclear='git fetch --prune && git branch -vv | grep ": gone]" | awk "{print \$1}" | xargs -p git branch -D'
alias gp='git pull --rebase'
alias gP='git push origin HEAD'

# Tmux aliases
alias t='tmux'
alias ta='tmux attach -t'
alias tk='tmux kill-session -a'
alias tl='tmux ls'
alias tn='tmux new-session -s'

# Initialize tools
[ -x "$(command -v starship)" ] && eval "$(starship init zsh)"
[ -x "$(command -v zoxide)" ] && eval "$(zoxide init --cmd cd zsh)"
[ -x "$(command -v pyenv)" ] && eval "$(pyenv init --path)" && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"

# API keys
[ -f ~/dotfiles/.api_keys ] && source ~/dotfiles/.api_keys

# Python aliases
if command -v pyenv 1>/dev/null 2>&1; then
    alias py=python3
    alias pip=pip3
fi

# Shell GPT utilities
generate_commit_message() {
    git_diff=$(git diff --staged)
    if [[ -n $git_diff ]]; then
        sgpt_message=$(echo "$git_diff" | sgpt "Generate commit message, for my changes, be clear and informative, in 80 characters or less, use the conventional commits format")
        sgpt_message=$(echo "$sgpt_message" | tr -s '\n' ' ' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
        commit_msg_file=$(mktemp)
        echo "$sgpt_message" > "$commit_msg_file"
        nvim "$commit_msg_file"
        if [[ $? -eq 0 && -s $commit_msg_file ]]; then
            git commit -F "$commit_msg_file"
            echo "👍 Commit done. Otsukare!"
        else
            echo "🙅 Operation cancelled. Yamete kudasai!"
        fi
        rm "$commit_msg_file"
    else
        echo "😓 There are no staged changes. Baka janai no?"
    fi
}
alias gc=generate_commit_message

# Conda initialization (lazy load)
if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
    alias conda_init=". /opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
fi

# Special environment configurations
alias stablediff='cd ~/Projects/stable-diffusion-webui && conda activate sdxl && PYTORCH_ENABLE_MPS_FALLBACK=1 MPS_ENABLE_DEVICE_SIDE_MEMPOOL=1 ./webui.sh --no-half-vae --use-cpu interrogate --skip-torch-cuda-test --medvram --opt-split-attention --precision full'

# Cursor style
echo -e '\e[2 q'  # Block cursor
