# Created by newuser for 5.8.1
neofetch

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

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
export STARSHIP_CONFIG=~/.starship/config.toml
export STARSHIP_CACHE=~/.starship/cache

# ZSH Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fnm
export PATH=/home/augusto/.fnm:$PATH
eval "`fnm env`"

export GPG_TTY=$(tty)

# Starship
eval "$(starship init zsh)"
