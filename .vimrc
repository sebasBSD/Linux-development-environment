" welcome to sebastians vimrc setup
let mapleader = " "

syntax on

" settings
filetype on
filetype plugin on
filetype indent on

set encoding=utf-8
set t_Co=256
set tabstop=4 softtabstop=4
set mouse=a
set shiftwidth=4


set number
set ignorecase
set cursorline
set showmode
set nohlsearch
set showcmd
set wildmenu
set autoindent
set nobackup

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'townk/vim-autoclose'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'

call plug#end()


" THEME
colorscheme gruvbox
set background=dark


" auto opening NERDtree
autocmd VimEnter * NERDTree


" Tagbar keys
nmap <F2> :TagbarToggle<CR>


" air-line
let g:airline_powerline_fonts=1


" Screen spliting
nnoremap <Leader>hs <C-w>s
nnoremap <Leader>vs <C-w>v


"-------------  MAPPINGS -------------
"
"-------------------------------------

" screen movement
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" tabs
nnoremap <Leader>tc :tabnew<Cr>
nnoremap <Leader>tq :tabclose<Cr>
nnoremap <Leader>tn :tabnext<Cr>
nnoremap <Leader>tp :tabprevious<Cr>


" fzf
nnoremap <C-p> :FZF<CR>
