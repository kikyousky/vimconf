filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set tags=tags;/

syntax on
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set nu
"set undofile
set gfn=Menlo\ Regular:h12 "font
colorscheme molokai
set nocursorline

"adjust match paren
hi MatchParen cterm=bold ctermbg=none ctermfg=yellow
"set the leader key
let mapleader=","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
"nnoremap <leader><space>:noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set list
set listchars=tab:▸\ ,eol:¬

"disable the arrows
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

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"open vimrc file
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

"nnoremap <leader>v V`]

"nnoremap <leader>q gqip

"split window
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"nerdtree
nnoremap <leader>f :NERDTree<cr>

"scratch
nnoremap <leader>s :Scratch<cr>

"supertab
"let g:SuperTabMappingForward = '<c-n>'
"let g:SuperTabMappingBackward = '<c-p>'

"clam
nnoremap <leader>c :Clam<space>
vnoremap <leader>c :ClamVisual<space>

augroup filetypedetect 
    au BufNewFile,BufRead *.nsh setf nsis 
augroup END 

function! JavaScriptFold()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syn region foldBraces start=/;(function($){/ end=/})(jQuery)/ transparent fold keepend extend
endfunction
au FileType javascript call JavaScriptFold()

"ctrlsf
"Input :CtrlSF in command line for you, just a handy alias.
nmap     <C-F>f <Plug>CtrlSFPrompt
"Input :CtrlSF foo in command line where foo is the current visual selected
"word, waiting for further input.
vmap     <C-F>f <Plug>CtrlSFVwordPath
"Similar to above, but execute it for you.
vmap     <C-F>F <Plug>CtrlSFVwordExec
"Input :CtrlSF foo in command line where foo is the word under cursor.
nmap     <C-F>n <Plug>CtrlSFCwordPath
"Input :CtrlSF foo in command line where foo is the last search pattern of vim.
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
let g:ctrlsf_position = 'right'

"emmet
let g:user_emmet_expandabbr_key = '<c-e>'

