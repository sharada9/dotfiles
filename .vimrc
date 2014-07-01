source $HOME/.vim/vimrc.base

if has('gui_running')
  set guifont=Hermit\ Medium\ 10
  colorscheme base16-tomorrow
else
  "let g:lightline = { 'colorscheme': 'solarized' }

  colorscheme base16-atelierlakeside
  set background=dark
endif
