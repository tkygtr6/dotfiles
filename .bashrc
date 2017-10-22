echo "loaded .bashrc"

HISTSIZE=50000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '

eval $(/usr/libexec/path_helper -s)

case "${OSTYPE}" in
darwin*)
  alias ls="ls -G"
  alias ll="ls -lG"
  alias la="ls -laG"
  ;;
linux*)
  alias ls='ls --color'
  alias ll='ls -l --color'
  alias la='ls -la --color'
  ;;
esac

alias l='ls'
alias grep="grep --color=auto"
alias cp="cp -i"
alias mv="mv -i"
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
alias mysql='mysql -u root -p'
alias du='du -h'

### Virtualenvwrapper
if [ -f /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
fi
workon g3
