# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/.cargo/env:$HOME/bin:/usr/local/bin:$PATH:/usr:/usr/local:/usr/local/bin:/opt/local/bin:~/.bin:/usr/local/sbin
export PATH=/Users/fr4c741_r3d/CS348/mongodb-macos-x86_64-4.4.5/bin:$PATH
export PATH=~/.emacs.d/bin:$PATH

export KEYTIMEOUT=1

source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle robbyrussel

antigen bundle tmux
antigen bundle git
antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async
antigen theme romkatv/powerlevel10k

antigen apply

bindkey -v

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
HOMEBREW_NO_AUTO_UPDATE=true

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fr4c741_r3d/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fr4c741_r3d/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/fr4c741_r3d/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fr4c741_r3d/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Wasmer
export WASMER_DIR="/Users/fr4c741_r3d/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# Aliases
alias c="clear"
alias nv="nvim"
alias md="mongod --dbpath ~/db"
zstyle ':bracketed-paste-magic' active-widgets '.self-*'
alias matrix="cmatrix -absC magenta"
