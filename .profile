# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

export DB_MAIN_BIN="$HOME/Tools/dbmain/bin"
export PATH="$PATH:$HOME/.emacs.d/bin/:$DB_MAIN_BIN"
export LD_LIBRARY_PATH="$DB_MAIN_BIN:$DB_MAIN_BIN/../java/jre/lib/amd64/server:$LD_LIBRARY_PATH" 
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


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
export GPG_TTY=$(tty)
. "$HOME/.cargo/env"
export PAGER="moar"
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"
export MANPAGER="moar -no-line-numbers"
