# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr:/usr/local:/usr/local/bin:~/.bin:/usr/local/sbin

alias c="clear"

alias vim=/usr/local/bin/vim

export SPOTIFY_CLIENT_ID=90538f3b9ebc4e078931f8d94ef77622
export SPOTIFY_SECRET=3551a62f54154fbf97885690544097cb

source /Users/fr4c741_r3d/Library/Preferences/org.dystroy.broot/launcher/bash/br

source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle tmux
antigen bundle pip

antigen bundle mafredri/zsh-async
antigen theme romkatv/powerlevel10k

antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

bindkey -v
export KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
