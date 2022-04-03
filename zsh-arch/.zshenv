
# History
export HISTFILE=~/.zsh_history
export HISTFILESIZE=20000
export HISTSIZE=20000
export HISTTIMEFORMAT="[%F %T] "
export SAVEHIST=20000
setopt EXTENDED_HISTORY
setopt HISTIGNOREALLDUPS
setopt INC_APPEND_HISTORY

# Alias
source ~/Documents/dotfiles/alias.txt

# Functions
source ~/Documents/dotfiles/functions.txt

# Go
export PATH=$PATH:/usr/local/go/bin

# Laravel
export PATH="$PATH:/home/augusto/.config/composer/vendor/bin"

# Symfony
export PATH="$HOME/.symfony/bin:$PATH"

. "$HOME/.cargo/env"
