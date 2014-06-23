source $HOME/.profile

export HISTFILE=$HOME/.history.zsh
export HISTCONTROL=erasedups
export SAVEHIST=1000

fpath=( "$HOME/.zsh" $fpath )

if [ ! "$TERM" = "vt220" ]; then
  autoload -U promptinit && promptinit
  prompt pure

  export TERM=xterm-256color
fi

autoload colors
colors

autoload -U compinit
compinit

zstyle ':completion:*' menu select

source $HOME/.zsh/z.sh
source $HOME/.zsh/syntax-highlighting.zsh
source $HOME/.zsh/history-substring-search.zsh

# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

