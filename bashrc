### ----- HISTORY ------ ###
### ----------------------------- ###
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
### ----------------------------- ###


### ----- System Utilities ------ ###
### ----------------------------- ###
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# Add some colour to LESS/MAN pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;42;30m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
### ----------------------------- ###

### ----- PS1 ------ ###
### ----------------------------- ###
PS1='\[\033[01;32m\]\h:\[\033[01;34m\]\w\[\033[00m\]\$ '
unset color_prompt force_color_prompt
PROMPT_DIRTRIM=2
### ----------------------------- ###


### ----- aliases ------ ###
### ----------------------------- ###
# bai/sh vpn
alias vpn-connect='openvpn3 session-start --config /home/con/bai/vpn/client.ovpn'
alias vpn-kill='openvpn3 session-manage --disconnect --config /home/con/bai/vpn/client.ovpn'
alias vpn-status='openvpn3 sessions-list'
# ctags in git folder
alias dotags='ctags -R --tag-relative -f ./.git/tags .'
# thanks atharva :)
alias gl='git log --pretty=oneline --abbrev-commit'
### ----------------------------- ###

