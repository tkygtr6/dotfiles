set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

# Display fullpath
set fish_prompt_pwd_dir_length 0

function fish_prompt
  set last_status $status

  set_color -o

  set_color green -o
  printf '%s:' (whoami)

  set_color blue
  printf '%s' (prompt_pwd)

  set_color green
  printf '%s ' (__fish_git_prompt)

  set_color normal
  printf '[%s]' $last_status
  printf '\n'
  printf '> '
end

function fish_right_prompt
  set_color normal
  printf '[%s]' (date "+%m/%y %H:%M:%S")
end

function gvim
	if test (count $argv) -lt 1;
      echo "gvim [keyword]" 1>&2
      return 1
	end
    vim ( grep -r $argv[1] . | peco --query $argv[1] | awk -F: '{print $1}' )
end

function gopen
	if test (count $argv) -lt 1;
      echo "gvim [keyword]" 1>&2
      return 1
	end
    vim ( grep -r $argv[1] . | peco --query $argv[1] | awk -F: '{print $1}' )
end

function ghistory
	if test (count $argv) -lt 1;
	    eval ( history | tail -r | peco )
    else if test (count $argv) -lt 2
        eval ( history | tail -r | grep $argv[1] |  peco --query $argv[1] )
    else
        echo "ghistory [keyword]" 1>&2
        return 1
    end
end

