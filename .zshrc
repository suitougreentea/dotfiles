export DOTFILESDIR=~/dotfiles

export PATH="./node_modules/.bin:/home/suitougreentea/.linuxbrew/bin:/usr/share/eclipse:/home/suitougreentea/bin:/home/suitougreentea/build/bin:/home/suitougreentea/.rbenv/shims:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH"
export MANPATH="/home/suitougreentea/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/suitougreentea/.linuxbrew/share/info:$INFOPATH"
alias ls="ls --color"
alias cd..="cd .."
alias reloadzsh=". ~/.zshrc"
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

# Virtual env wrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh
fi

install_powerline_precmd

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

autoload -U compinit
compinit

source /usr/share/doc/pkgfile/command-not-found.zsh

byobu-launcher
