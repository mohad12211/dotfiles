#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=nvim;
export EDITOR=nvim;
export PATH=$PATH:~/.local/bin

set -o vi

alias ll='exa -l --color=always --group-directories-first'
alias ls='exa -al --color=always --group-directories-first'
alias mc='sudo make clean install ; git clean -f .'
alias mk='sudo make clean install'
alias cl='git clean -f .'
PS1='[\u@\h \W]\$ '


if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
	    GIT_PROMPT_ONLY_IN_REPO=1
	        source $HOME/.bash-git-prompt/gitprompt.sh
		GIT_PROMPT_THEME=Single_line_NoExitState_openSUSE
fi

alias config='/usr/bin/git --git-dir=/home/mohad/.cfg/ --work-tree=/home/mohad'
