export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LC_ALL="en_US.UTF-8"
alias xrel="xrdb ~/.Xresources"
alias vi='vim'
alias vimo='vim -u NONE -U NONE -N -i NONE'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias ls='ls -GFh --color'
alias ll='ls -lash --color'
alias ddu='sh ~/Dropbox/Development/Themes\ WordPress/dobsondev-underscores/ddunderscores-osx.sh'
alias sl="ls" 
alias t="tmux"
alias tls="tmux ls"
alias tns="tmux new -s"
alias tma="tmux attach -t"
alias grep='grep --color=always' 
alias i3lock='./.config/i3status/lock.sh'
alias pac="sudo pacman"

#colors 

function prompt {
  local BLACK="\[\033[101m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"
  local BACKWHITE="\033[7m "
  export PS1="$GREENBOLD \u $CYAN\$ $RESETCOLOR"
}
prompt

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH



#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
if [ -d "$HOME/.local/bin" ]; then
        PATH="$HOME/.local/bin:$PATH"
fi

if [ "$TERM" = "xterm" ]; then
	  export TERM=xterm-256color
fi
  alias tmux='tmux -2'  # for 256color
  alias tmux='tmux -u'  # to get rid of unicode rendering problem


#EXTRA ALIASES 
#source ~/.shell_prompt.sh


# Path to the bash it configuration
export BASH_IT="/home/kylo/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='powerline'
# (Advanced): Change is to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Unomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
#source ~/enhancd-master/init.sh
source ~/.bash/mysql-colorize/mysql-colorize.bash
source $BASH_IT/bash_it.sh

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
