# Paths
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/bin:/usr/local/bin:$PATH

# Initialize zoxide
eval "$(zoxide init --cmd cd zsh)"
# Lazy-load NVM
export NVM_AUTO_USE=false
alias use-node='[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm use'

# Starship prompt (asynchronous)
eval "$(starship init zsh)"

# Aliases
alias p='pnpm'
alias ls='lsd'
alias l='ls -FL'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree --ignore-glob "node_modules"'
alias vim='nvim'
alias cat='bat'
alias top='vtop'
alias aiwatch='aider --watch-files --sonnet --chat-mode code'
# Git aliases
alias g='lazygit'
alias ga='git add'
alias gs='git status'
alias gcd='git checkout'
alias gcm='git checkout main'
alias gp='git pull --rebase'
alias gP='git push origin HEAD'

# Tmux aliases
alias t='tmux'
alias ta='tmux attach -t'
alias tk='tmux kill-session -a'
alias tl='tmux ls'
alias tn='tmux new-session -s'

# Shell GPT utilities
generate_commit_message() {
    git_diff=$(git diff --staged)
    if [[ -n $git_diff ]]; then
        sgpt_message=$(echo "$git_diff" | sgpt "Generate commit message, be clear and informative, 80 characters max, use conventional commits format")
        sgpt_message=$(echo "$sgpt_message" | tr -s '\n' ' ' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
        commit_msg_file=$(mktemp)
        echo "$sgpt_message" > "$commit_msg_file"
        nvim "$commit_msg_file"
        if [[ $? -eq 0 && -s $commit_msg_file ]]; then
            git commit -F "$commit_msg_file"
            echo "👍 Commit done."
        else
            echo "🙅 Operation cancelled."
        fi
        rm "$commit_msg_file"
    else
        echo "😓 No staged changes."
    fi
}
alias gc=generate_commit_message

# API keys
[ -f ~/dotfiles/.api_keys ] && source ~/dotfiles/.api_keys

nvm_auto_use() {
    if [ -f ".nvmrc" ]; then
        use-node
        nvm use
    fi
}
autoload -Uz add-zsh-hook
add-zsh-hook chpwd nvm_auto_use

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. "$HOME/.cargo/env"

# This line is automatically inserted by the installer of ask.sh
eval "$(ask-sh --init)"
