# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/fr4c741_r3d/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

COMPLETION_WAITING_DOTS="true"
export SPOTIFY_CLIENT_ID=90538f3b9ebc4e078931f8d94ef77622
export SPOTIFY_SECRET=3551a62f54154fbf97885690544097cb
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr:/usr/local:/usr/local/bin:~/.bin
alias c="clear"
alias rd="ranger"
alias vim="/usr/local/bin/vim"
bindkey -v
export KEYTIMEOUT=1
export LIBTOOL=`which glibtool`
export LIBTOOLIZE=`which glibtoolize`
fpath+=${ZDOTDIR:-~}/.zsh_functions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
