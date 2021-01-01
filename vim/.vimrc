filetype plugin indent on
set autoindent
set smartindent
set number
set relativenumber
set keymap=vietnamese-telex imdisable iminsert=0 imsearch=-1

autocmd BufEnter * colorscheme koehler
autocmd BufEnter *.md colorscheme delek
autocmd FileType rst setlocal shiftwidth=3
