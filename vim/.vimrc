filetype plugin indent on
syntax on
set autoindent
set smartindent
set number
set relativenumber
set pastetoggle=<F2>
set keymap=vietnamese-telex imdisable iminsert=0 imsearch=-1
set dictionary=/usr/share/dict/american

" Auto detecting for paste mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" sync vim clipboard and system clipboard
" only supported on gvim tho
set clipboard=unnamed


call plug#begin()
Plug 'lervag/vimtex'
Plug 'chrisbra/csv.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'dpelle/vim-LanguageTool'
Plug 'Raku/vim-raku'
Plug 'joom/latex-unicoder.vim'
Plug 'gruvbox-community/gruvbox'
call plug#end()

set t_Co=256
colorscheme badwolf
set background=dark
autocmd FileType rst setlocal shiftwidth=3

" hi Normal guibg=NONE ctermbg=NONE

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
let g:vimtex_quickfix_ignore_filters = [
  \'Underfull \\hbox (badness [0-9]*) in ',
  \'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in ',
  \'[Ww]arning',
  \]
let g:vimtex_quickfix_mode = 1
let g:vimtex_view_method = 'mupdf'
