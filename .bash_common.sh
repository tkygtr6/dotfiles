echo "loading .bash_common.sh"

function gvim() {
	if [ $# -ne 1 ]; then
	  echo "gvim [keyword]" 1>&2
	  return 1
	fi
    vim $( grep -r $1 . | peco --query $1 | awk -F: '{print $1}' )
}

function gopen() {
	if [ $# -ne 1 ]; then
	  echo "gopen [keyword]" 1>&2
	  return 1
	fi
    open $( grep -r $1 . | peco --query $1 | awk -F: '{print $1}' )
}

function ghistory() {
	if [ $# -eq 0 ]; then
        eval $( history | tail -r | peco | cut -d' ' -f 7- )
    elif [ $# -eq 1 ]; then
        eval $( history | tail -r | grep $1 |  peco --query $1 | cut -d' ' -f 7- )
    else
        echo "ghistory [keyword]" 1>&2
        return 1
    fi
}

export HISTSIZE=50000
export HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '

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

