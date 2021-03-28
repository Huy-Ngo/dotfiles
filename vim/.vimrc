filetype plugin indent on
syntax on
set autoindent
set smartindent
set number
set relativenumber
set keymap=vietnamese-telex imdisable iminsert=0 imsearch=-1
set dictionary=/usr/share/dict/american

" packadd! dracula
" syntax enable
" colorscheme dracula

autocmd BufEnter * colorscheme koehler
autocmd BufEnter *.md colorscheme delek
autocmd FileType rst setlocal shiftwidth=3

call plug#begin()
Plug 'lervag/vimtex'
Plug 'chrisbra/csv.vim'
call plug#end()

" For minted
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
