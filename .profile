PATH=$HOME/.bin:./node_modules/.bin:$HOME/.gem/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.

PKG_PATH="http://mirror.internode.on.net/pub/OpenBSD/snapshots/packages/amd64/"

export PATH HOME TERM PKG_PATH

HISTFILE=$HOME/.history
HISTSIZE=1000

if which vim > /dev/null; then
  export EDITOR=$(which vim)
  alias vi="vim"
fi

if which colorls > /dev/null; then
  export CLICOLOR=1
  alias ls="colorls"
fi

alias l="ls -al"
alias cl="clear"

export GEM_HOME="$HOME/.gem"
export GEM_ROOT="$HOME/.gem"
