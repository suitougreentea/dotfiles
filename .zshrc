export DOTFILESDIR=~/dotfiles

export PATH="/home/suitougreentea/bin:/home/suitougreentea/.rbenv/shims:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
alias ls="ls --color"
alias cd..="cd .."
alias reloadzsh=". ~/.zshrc"
alias cddev="cd /media/suitougreentea/Gateway/udata/dev/"
alias sudo='sudo env PATH=$PATH'
# rbenv
eval "$(rbenv init -)"
# added by travis gem
[ -f /home/suitougreentea/.travis/travis.sh ] && source /home/suitougreentea/.travis/travis.sh


# Powerline Shell
function powerline_precmd() {
  export PS1="$($DOTFILESDIR/zsh/powerline-shell/powerline-shell.py $? --shell zsh 2> /dev/null)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}" ; do
    if [ "$s" = "powerline_precmd" ] ; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

install_powerline_precmd
