se nocompatible
filetype off

se rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'AutoComplPop'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'klen/python-mode'
Plugin 'tpope/vim-fugitive'
" Plugin 'scrooloose/syntastic'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'davidhalter/jedi-vim'
Plugin 'elzr/vim-json'

let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_options = "-local=github.com/Workiva,github.com/Workiva/skaardb"

" jump to last edited position in file instead of always starting at the top
" line, leftmost column
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif

call vundle#end()

filetype plugin indent on
syntax enable

se nu

" enter spaces when tab is pressed:
set expandtab

" do not break lines when line length increases
set textwidth=0
" user 4 spaces to represent a tab
set tabstop=8
set softtabstop=4

" number of space to use for auto indent
" you can use >> or << keys to indent current line or selection
" in normal mode.
set shiftwidth=4

se autoindent
se backspace=indent,eol,start
se complete-=i
se smarttab

se laststatus=2
se ruler
se showcmd

se hlsearch incsearch

se splitbelow splitright

se wrapmargin=0
se linebreak
se tw=80

se nojoinspaces

nmap w :w<CR>
nmap q :q<CR>
nmap <Tab> <C-w><C-w>
nmap <F5> :!go test<CR>

"" move between tabs
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>

" Clear highlighting by pressing ENTER
nnoremap <silent> <CR> :noh<CR><CR>

colors zenburn
se colorcolumn=100
set ic

au FileType python setl ts=4 sw=4 et

"Git and fugitive.
map <C-G>s :Gstatus<CR>
map <C-G>c :Gcommit<CR>

"Make cntrl-p not show pyc files
set wildignore+=*.pyc

let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/](target)|(Godeps)|(build)$',
	\ }


"" Python settings
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"" Pymode customizations
let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

"" Use the following for large python projects which cause vim to hang
"" otherwise
" let g:pymode_rope = 0
" let g:pymode_rope_lookup_project = 0

"" Go settings
au BufRead,BufNewFile *.go noremap grn :GoRename<CR>


au BufRead,BufNewFile *.frugal setlocal ft=thrift

"" syntastic customizations

" ctrk+p optimization
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
