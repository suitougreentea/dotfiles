export DOTFILESDIR=~/dotfiles
export PATH="./node_modules/.bin:$HOME/.linuxbrew/bin:/usr/share/eclipse:$HOME/build/bin:$HOME/.rbenv/shims:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
export CHROME_BIN="/usr/bin/chromium"
export EDITOR="vim"

alias ls="ls --color"
alias cd..="cd .."
alias reloadzsh=". ~/.zshrc"
alias sudo='sudo env PATH=$PATH'

alias gps="git push origin"
alias gpl="git pull origin"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcv="git commit -v"
alias gbdm="git checkout master; git branch -d \$(git branch --merged | grep -v master | grep -v '*')"

cde() {
  local DIR=$(ls --color=never -F ~/dev/ | grep / | peco | head -n 1)
  if [ -n "$DIR" ] ; then
    DIR=${DIR%/*}
    cd ~/dev/$DIR
  fi
}

# rbenv
eval "$(rbenv init -)"

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

# Completion
autoload -U compinit
compinit

# Powerline Shell
function powerline_precmd() {
  export PS1="$($HOME/.zsh/powerline-shell/powerline-shell.py $? --shell zsh 2> /dev/null)"
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

# Virtual env wrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh
fi

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# pkgfile command not found suggest
source /usr/share/doc/pkgfile/command-not-found.zsh

# added by travis gem
[ -f /home/suitougreentea/.travis/travis.sh ] && source /home/suitougreentea/.travis/travis.sh
