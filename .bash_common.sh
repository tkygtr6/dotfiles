HISTSIZE=50000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '

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
alias mysql='mysql -u root -p'
alias du='du -h'
alias clang='clang --std=c++11 --stdlib=libc++'

export PS1="\[\e[1;32m\]\u:\[\033[01;34m\]\w\[\033[00m\]\$ "

echo "loaded .bash_common.sh"
