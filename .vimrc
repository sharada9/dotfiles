source $HOME/.vim/vimrc.base

" Working with JSON
map <leader>pj :%!python -m json.tool<CR>
map <leader>px :%!xmllint % --format<CR>
map <leader>pc :CoffeeCompile<CR>
autocmd BufEnter * :setlocal conceallevel=0

if has('gui_running')
  set guifont=PragmataPro\ 10
  colorscheme Tomorrow
else
  "let g:lightline = { 'colorscheme': 'solarized' }

  colorscheme base16-atelierlakeside
  set background=dark
endif
