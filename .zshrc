# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
alias cours="~/Documents/cours/"
alias python=python3
alias vimpager=vim
alias pip=pip3
alias llvm-config="/usr/local/opt/llvm/bin/llvm-config"
export EDITOR="/usr/local/bin/vim"
export GIT_PAGER="less"
export GIT_EDITOR="/usr/local/bin/vim"
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# BASE16_SHELL="$HOME/g/base16-shell/base16-monokai.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/texlive/2022basic/bin/universal-darwin:~/Documents/Programmation/bin:
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH
