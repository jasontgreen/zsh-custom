autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats ' on %F{3}%b%f'

PROMPT='%F{cyan}%n@%m%f in %F{magenta}%~%f${vcs_info_msg_0_} at %F{blue}%D{%Y-%m-%d %H:%M:%S}%f
%(?.%F{green}.%F{red})%! %#%f '
