# Path to your oh-my-zsh installation.
export ZSH="/home/sachet/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

#alias
alias v=nvim
alias zrc="nvim ~/.zshrc"

#vi mode
bindkey -v
export KEYTIMEOUT=1
source $ZSH/oh-my-zsh.sh

autoload -U colors && colors

# auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files

#autoload -U promptinit; promptinit
#  prompt spaceship 

#source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

