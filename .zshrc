autoload -U colors && colors
autoload -U compinit; compinit
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %F{magenta}%b%f'

setopt PROMPT_SUBST
PS1='[%F{red}%T%f] %F{cyan}%n%f %F{green}%1~%f ${vcs_info_msg_0_} %F{white}#%f '

alias code='open -a 'Visual Studio Code''
alias chrome='open -a 'Google Chrome''

alias gs='git status'
alias ga='git add . '
alias gc='git commit'
alias gp='git push'

PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH
