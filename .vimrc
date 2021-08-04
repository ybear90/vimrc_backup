" Syntax Highlighting
if has("syntax")
     syntax on
   endif
set ignorecase
set si
set hlsearch
set tabstop=4
set number
set autoindent
set cindent
set sts=4
set sw=4
set showmatch
autocmd FileType * setlocal comments-=://
set mouse=a 
set title
set enc=utf-8
set fenc=utf-8
set incsearch
set formatoptions-=r
set complete=.,t
filetype off
colorscheme desert 
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
		Plugin 'VundleVim/Vundle.vim'
		Plugin 'Raimondi/delimitMate'		"괄호 자동완성
		Plugin 'neocomplcache'				"미리보기
		Plugin 'vim-airline/vim-airline'	"airline
		Plugin 'vim-airline/vim-airline-themes' 
		Plugin 'scrooloose/nerdtree'		"파일 관리 <F2>으로 설정
call vundle#end()
filetype plugin indent on
let g:neocomplcache_enable_at_startup = 1
set history=999
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
  \ exe "normal! g`\"" |
	\ endif


"python_version_3
let python_version_3=1
let python_highlight_all=1
let g:pydiction_location='/home/asung/.vim/pydiction/complete-dict'

map<F2> <ESC>:NERDTree<CR> 

"airline
set term=xterm-256color
set t_Co=256
let g:airline_theme="wombat"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

map <F3> <ESC>:bp<CR>
map <F4> <ESC>:bn<CR>
