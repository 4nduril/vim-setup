set nocompatible
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set scrolloff=3
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
nnoremap <Leader><space> :noh<cr>
set ignorecase
set gdefault
set showmatch

set wrap

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap <Leader>u :! uglifyjs % -m toplevel -o %:r.min.js<CR><Space>
nnoremap <Leader>w :w <Bar> !lessc % > %:t:r.css<CR><Space>
nnoremap <Leader>ff :! firefox %<CR><Space>
nnoremap <Leader>gc :! google-chrome %<CR><Space>

nnoremap <Leader>v :vsplit<Space>
nnoremap <Leader>h :split<Space>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType less set omnifunc=csscomplete#CompleteCSS

inoremap <Nul> <C-x><C-o>

call pathogen#infect()

let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers=['jshint']

colorscheme robokai
hi CursorLine cterm=NONE ctermbg=DarkGray
