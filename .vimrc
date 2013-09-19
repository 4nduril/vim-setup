" make Vim use Vim defaults, not Vi.
set nocompatible

" Copy indent from current line when starting a new line.
set autoindent

" Indent automatically after a line ending with '{', 'if' or the like.
set smartindent

" Number of columns a tab counts for while displaying.
set tabstop=4
" Number of columns a tab counts for while inserting.
set softtabstop=4
" Number of columns text is (auto)indented.
set shiftwidth=4
" Tabs are inserted, not spaces.
set noexpandtab
" For explanation read Vim help files or:
"	http://tedlogan.com/techblog3.html

" Minimal number of lines above and below the cursor.
set scrolloff=3
" Show if we are in Insert, Visual or Replace mode.
set showmode
" Hide buffers (open files) instead of unloading them. Makes it possible to
"	have several changed but unsaved files open at the same time.
set hidden

" Command completion in Vim. 'wildmenu' gives you a scrolling horizontal list
"	of the available options which are navigable by <left> and <right>.
"	'wildmode' displays a full list of all options and completes the command
"	line.
set wildmenu
set wildmode=list:longest

" Highlights the line on which the cursor is.
set cursorline
" We have a fast terminal connection.
set ttyfast
" Show current corsor position: line and column.
set ruler
" Allows <backspace> and others to cross indents, linebreaks and beginnings of
"	insertions.
set backspace=indent,eol,start
" Always show a status line.
set laststatus=2
" Show line numbers relative to the current line.
set relativenumber
" Save persistent undo history in a file.
set undofile

" Define ',' for custom mappings.
let mapleader = ","

" Prepend all searches with the option \v which enables Perl regexps.
nnoremap / /\v
vnoremap / /\v
" Highlight search matches and find them while typing.
set hlsearch
set incsearch
" Comma-Space de-highlights search matches.
nnoremap <Leader><space> :noh<cr>
" Search case-agnostic.
set ignorecase
" Always apply substitutions globally on lines.
set gdefault
" When you insert a bracket, shortly show matching one.
set showmatch

" Display lines wrapped, when they are too long.
set wrap

" Enable spellchecking. Set spelllang according to your language.
set spell 
set spelllang=de

" Enable syntax checking
syntax on

" Force using h,j,k,l for moving, not allowing arrow keys.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" Move by screen lines not by file lines.
nnoremap j gj
nnoremap k gk

" Define shortcuts for invoking external programs.
" Invoke uglifyjs on current file, mangle names on toplevel and save as
"	*.min.js.
nnoremap <Leader>u :! uglifyjs % -m toplevel -o %:r.min.js<CR><Space>
" Save the current file and invoke lessc on it, all in one step.
nnoremap <Leader>w :w <Bar> !lessc % > %:r.css<CR><Space>
" Open current file in Firefox or Chrome.
nnoremap <Leader>ff :! firefox %<CR><Space>
nnoremap <Leader>gc :! google-chrome %<CR><Space>

" Define shortcuts for window splitting.
nnoremap <Leader>v :vsplit<Space>
nnoremap <Leader>h :split<Space>
" Define shortcuts for switchng between open split windows. <C- stands for 
"	Ctrl-
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Enable auto completion features for specific languages on file type base.
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType less set omnifunc=csscomplete#CompleteCSS

" Define Ctrl-Space (<Nul>) as shortcut for auto complete.
inoremap <Nul> <C-x><C-o>

" Integrate plugin bundles.
execute pathogen#infect()

" Make syntastic plugin check files on opening and saving.
let g:syntastic_check_on_open=1
" Use jshint as syntax checker for Javascript.
let g:syntastic_javascript_checkers=['jshint']

" Use robokai as colorscheme. This is a terminal version of molokai.
colorscheme robokai
" Style the highlighting for the cursorline more nicely.
hi CursorLine cterm=NONE ctermbg=DarkGray
