if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
export HOMEBREW_NO_AUTO_UPDATE=1
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias ls='lsd'
alias ip='ifconfig | grep inet'
alias cat='bat'
alias neofetch='fastfetch'
alias python='python3'
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/enveronment.zsh
export DENO_INSTALL="/Users/ardonplay/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
