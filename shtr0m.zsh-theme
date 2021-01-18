autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
precmd() { vcs_info }
setopt prompt_subst
zstyle ':vcs_info:git*' formats " %F{blue}%b %F{yellow}%m%F{red}%u%F{green}%c%f"
zstyle ':vcs_info:git*' actionformats " %F{blue}%b %F{yellow}(%a) %m%F{red}%u%F{green}%c%f"
if [[ -z "$SSH_CLIENT" ]]; then
        remote=""
else
        remote="%n@%m "
fi
PS1='%F{red}%(0?..%?)%f%F{242}$remote%f[%F{green}%B%~%f%b$vcs_info_msg_0_]%# '
