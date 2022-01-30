# Personal Config

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

cdpath=($HOME/Dev $HOME/Documents)

GPG_TTY=$(tty)
export GPG_TTY

# ZSH Plugins
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starship
eval "$(starship init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/augusto/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/augusto/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/augusto/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/augusto/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

