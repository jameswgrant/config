# Keep personal shell defaults here.
# Put machine-specific or sensitive values in ~/.zshrc.local (untracked).

export EDITOR=vim
export VISUAL=vim

alias l='ls -CF'
alias la='ls -A'
alias ll='ls -lah'
alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'
alias mkdirp='mkdir -p'
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias g='git'
alias gs='git status -sb'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gb='git branch'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gdc='git diff --cached'
alias glg='git lg'
alias gundo='git restore --staged --worktree'
alias reload='source ~/.zshrc'

if [ -f "$HOME/.zshrc.local" ]; then
  source "$HOME/.zshrc.local"
fi