# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

#PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/bin:/usr/local/sbin:/usr/X11R6/bin; export PATH

BLOCKSIZE=K;    export BLOCKSIZE
EDITOR=vi;      export EDITOR
PAGER=less;     export PAGER

PS1="\[\e[32m\]\u\[\e[0m\]@\[\e[33m\]\h\[\e[0m\]:\[\e[36m\]\w\[\e[0m\]]"; export PS1

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

alias ls="ls -FAG"
alias ll="ls -laFAG"
#alias ftp=ncftp3
alias vi=vim

#screen -R -D
