#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export _JAVA_AWT_WM_NONREPARENTING=1
export BROWSER=brave;
export VISUAL=nvim;
export EDITOR=nvim;
export PATH=$PATH:~/.local/bin

set -o vi

alias ll='exa -l --color=always --group-directories-first'
alias ls='exa -al --color=always --group-directories-first'
alias mc='sudo make clean install ; git clean -f .'
alias mk='sudo make clean install'
alias cl='git clean -f .'
alias pm='sudo pacman'
source $HOME/.config/git-prompt.sh
# PS1='\W $(git-prompt)> '
PS1='\[\033[38;5;10m\]\W\[$(tput sgr0)\] $(git-prompt)\[$(tput sgr0)\]\[\033[38;5;14m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]'

alias config='/usr/bin/git --git-dir=/home/mohad/.cfg/ --work-tree=/home/mohad'
