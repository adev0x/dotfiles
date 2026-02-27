# ~/.zshrc

# ── Prompt ──────────────────────────────────────────────────────────
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %b'
setopt PROMPT_SUBST
PROMPT='%F{blue}%~%f%F{green}${vcs_info_msg_0_}%f %F{yellow}❯%f '

# ── History ─────────────────────────────────────────────────────────
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# ── Aliases ─────────────────────────────────────────────────────────
alias ll='ls -lAh'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline -20'
alias ..='cd ..'
alias ...='cd ../..'

# ── Completion ──────────────────────────────────────────────────────
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ── Environment ─────────────────────────────────────────────────────
export EDITOR=vim
export LANG=en_US.UTF-8
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# ── Plugins (loaded if present) ─────────────────────────────────────
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh
