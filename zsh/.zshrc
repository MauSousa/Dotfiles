# Enable colors and change prompt:
# autoload -U colors && colors
source ~/.zshenv

# neofetch
nerdfetch

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Percentage symbol
setopt PROMPT_CR
setopt PROMPT_SP
export PROMPT_EOL_MARK=""

# Starship config file
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export STARSHIP_CACHE=~/.config/starship/cache

# fnm
export PATH=/home/augusto/.fnm:$PATH
eval "`fnm env`"

# zsh plugins
source /bedrock/strata/arch/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /bedrock/strata/arch/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# gpg agent
export GPG_TTY=$(tty)
 
eval "$(starship init zsh)"

# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
