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
export GOPATH=$(go env GOPATH)
export GOBIN=$(go env GOPATH)/bin

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Laravel
# export PATH="$PATH:/home/augusto/.config/composer/vendor/bin"
# export LARAVEL_PATH="/home/augusto/Dev/laravel/"

# Platzi
# export PLATZI="/home/augusto/Dev/platzi/"
