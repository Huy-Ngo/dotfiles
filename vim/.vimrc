filetype plugin indent on
syntax on
set autoindent
set smartindent
set number
set relativenumber
set paste
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
Plug 'francoiscabrol/ranger.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'dpelle/vim-LanguageTool'
call plug#end()

let g:snipMate = { 'snippet_version' : 1 }
let g:languagetool_jar = "/usr/share/languagetool/languagetool-commandline.jar"
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
let g:vimtex_view_method = 'mupdf'
