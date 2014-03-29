# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/suitougreentea/.zshrc'

autoload -Uz compinit
compinit

# Color

autoload colors
colors

# Show current directory
PROMPT="%2d>"

# Alias
alias ls="ls --color"
alias cd..="cd .."
alias reloadzsh=". ~/.zshrc"
alias cddev="cd /media/suitougreentea/Gateway/udata/dev/"
alias sudo='sudo env PATH=$PATH'

# Env value
#PATH="~/.rbenv/bin;$PATH"

# rbenv
eval "$(rbenv init -)"

# End of lines added by compinstall
