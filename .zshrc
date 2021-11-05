export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="random"
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
