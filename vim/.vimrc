filetype plugin indent on
set autoindent
set smartindent
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
set number
set relativenumber

autocmd BufEnter * colorscheme koehler
autocmd BufEnter *.md colorscheme slate

