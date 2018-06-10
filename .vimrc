se nocompatible
filetype off

se rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'AutoComplPop'
Plugin 'bronson/vim-trailing-whitespace'
" Bundle 'klen/python-mode'

let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

call vundle#end()

filetype plugin indent on
filetype plugin on
syntax enable

se nu

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

set ic

nmap w :w<CR>
nmap q :q<CR>
nmap <Tab> <C-w><C-w>
nmap <F5> :!go test<CR>

" Clear highlighting by pressing ENTER
nnoremap <silent> <CR> :noh<CR><CR>

colors zenburn

call pathogen#infect()
call pathogen#helptags()

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=White
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    se nofoldenable " disable folding
 "   let g:pymode_rope_goto_definition_bind = "gd"

    autocmd FileType haskell set tabstop=8
    autocmd FileType haskell set expandtab
    autocmd FileType haskell set softtabstop=4
    autocmd FileType haskell set shiftwidth=4
    autocmd FileType haskell set shiftround
augroup END

autocmd FileType ruby nmap gd :CtrlPTag<cr>

"" Go settings
au Bufread,BufNewFile *.go noremap grn :GoRename<CR>

au BufRead,BufNewFile *.frugal setlocal ft=thrift
