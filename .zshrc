source $HOME/.profile

export HISTFILE=$HOME/.history.zsh
export SAVEHIST=1000
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

fpath=( "$HOME/.zsh" $fpath )

if [ ! "$TERM" = "vt220" ]; then
  autoload -U promptinit && promptinit
  prompt pure

  if [ -n "$TMUX" ]; then
    export TERM=screen-256color
  else
    export TERM=xterm-256color
  fi
fi

autoload colors
colors

autoload -U compinit
compinit

zstyle ':completion:*' menu select

source $HOME/.zsh/z.sh
source $HOME/.zsh/syntax-highlighting.zsh
source $HOME/.zsh/history-substring-search.zsh

# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

[ -f "$HOME/.aliases" ] && source "$HOME/.aliases"
