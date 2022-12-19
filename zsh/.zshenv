# History
export HISTFILE=~/.zsh_history
export HISTFILESIZE=20000
export HISTSIZE=20000
# export HISTTIMEFORMAT="%F %T "
export HISTTIMEFORMAT="%d/%m/%y %T "
export SAVEHIST=20000
setopt EXTENDED_HISTORY
setopt HISTIGNOREALLDUPS
setopt INC_APPEND_HISTORY

# Alias
source ~/.config/dotfiles/alias.txt

# Functions
source ~/.config/dotfiles/functions.txt

# Go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$(go env GOPATH)
export GOBIN=$(go env GOPATH)/bin
export PATH=$HOME/go/bin/:$PATH

# Local bin
export PATH=$HOME/.local/bin:$PATH

# Goland Path
# export PATH=$HOME/Documentos/GoLand-2022.2/bin:$PATH
