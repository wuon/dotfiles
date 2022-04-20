# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git asdf)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# aliases
alias change="code ~/.zshrc"
alias update="source ~/.zshrc"
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'