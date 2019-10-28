
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"

PATH="/Applications/VICE/tools:/Users/fr4c741_r3d/.emacs.d/bin:${PATH}"
alias pip='pip3'
alias rd='ranger'
set -o vi
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPS="--extended"
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[$(tput bold)\]\[\033[38;5;120m\]\@\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;45m\]\d\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;9m\][\w]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput bold)\] \[$(tput sgr0)\]\[\e[35m\]\`parse_git_branch\`\[\e[m\]:\[\e[31m\]∑\e[m\]"
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
