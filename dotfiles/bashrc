#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias grep="grep --ignore-case --color"
alias shutdown="pkill spotify && shutdown now"
alias reboot="pkill spotify && reboot"
alias vim='nvim'
alias lvim='nvim -c "normal '\''0"'
alias urxvt='urxvt --perl-lib ~/.config/urxvt-ext/ -e bash'
alias pacman="yay"
alias dotdrop="~/dotfiles/dotdrop.sh"

# append a session's history on shell exit
shopt -s histappend
export HISTFILESIZE=
export HISTSIZE=

export PATH="/bin:/usr/bin:~/.scripts:~/.gem/ruby/2.5.0/bin"
