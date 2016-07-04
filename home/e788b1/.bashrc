#!/bin/bash
#
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

if [[ -f /etc/profile.d/bash-completion.sh ]] ; then
    . /etc/profile.d/bash-completion.sh
fi

shopt -s histappend
shopt -s autocd
shopt -s checkwinsize
shopt -s dotglob
# set -o noclobber
# set -o vi

HISTCONTROL=ignoreboth
HISTSIZE=100000
HISTFILE=~/.histfile
PROMPT_COMMAND="history -a"

export HISTSIZE HISTFILE PROMPT_COMMAND
export GIT_REPOS=${HOME}/.git_repos
export WINEDLLOVERRIDES='winemenubuilder.exe=d'
# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
# export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel' 
# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp, -Dswing.aatext=true'

PATH="$HOME/node_modules/.bin:$PATH"
. ~/.alias

# thanksgiving
# echo -e "\e[0;3$(( RANDOM * 6 / 32767 + 1 ))m观自在菩萨，行深般若波罗蜜多时，照见五蕴皆空，度一切苦厄。\n\e[0m"
echo -e "\e[0;3$(( RANDOM * 6 / 32767 + 1 ))mChop wood, carry water.\n\e[0m"
