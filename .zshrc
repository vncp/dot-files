export PATH="/home/intern/Scripts:$PATH"

export MNT_GRAPHICS="/mnt/devdata-graphics/_000_GameDev_Source/VLT_GROUP"
export MNT_RELEASES="/mnt/CurrentRelease/GameReleases/DMG"
export SB_AGP="/sandboxes/alc-sandbox.6.64.00.001/agp"
export SB_CG="/sandboxes/alc-sandbox.6.64.00.001/agp/rnogames/CoreGames"
export SB_RES="/sandboxes/alc-sandbox.6.64.00.001/agp/rnogames/CoreGames/resources"
export SB_SRC="/sandboxes/alc-sandbox.6.64.00.001/agp/rnogames/CoreGames/src"
export SB_G="/sandboxes/alc-sandbox.6.64.00.001/agp/rnogames/CoreGames/games"
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="/home/intern/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting sudo tmux zsh-autosuggestions zsh-completions)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
