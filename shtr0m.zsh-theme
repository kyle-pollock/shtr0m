autoload -U colors && colors
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
precmd() { vcs_info }
setopt prompt_subst
zstyle ':vcs_info:git*' formats "%{$fg[blue]%}%b%{$fg[yellow]%} %m%{$fg[red]%}%u%{$fg[green]%}%c%{$reset_color%} "
zstyle ':vcs_info:git*' actionformats "%{$fg[blue]%}%b%{$fg[yellow]%} (%a) %m%{$fg[red]%}%u%{$fg[green]%}%c%{$reset_color%} "
PS1='┌─[%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[magenta]%}%m%{$fg_bold[blue]%} %~ %{$fg_no_bold[red]%}%(0?..%?)%{$reset_color%}] %{$vcs_info_msg_0_%}
└─╼ '
