#!/bin/bash


__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi  
}
PS1='\u\[\e[1;30m\]@\[\e[1;35m\]\h\[\e[1;30m\]:\[\e[4;37m\]\w\[\e[0;33m\]$(__git_ps1)\[\e[0m\]]\[\e[1;37m\]\$\[\e[0m\] '

alias ssh="ssh -Y"
alias vi="vim"

export SVN_EDITOR=vi
export GIT_EDITOR=vi
