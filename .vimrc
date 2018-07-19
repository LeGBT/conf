"prefs
set t_Co=16
set nocompatible
syn  on
syntax on
filetype plugin indent on
set expandtab
set tabstop =4
set shiftwidth =4
set softtabstop =4
set textwidth =80
set nonumber
set cpoptions+=n
set clipboard=unnamed
set autoread
set switchbuf=usetab
set cmdheight=2
set efm=%A%f:%l:\ %m,%+Z%p^,%+C%.%#,%-G%.%#
set wildchar=<Tab> wildmenu wildmode=full
set background=dark
colorscheme gbt
set shell=/usr/local/bin/zsh
set laststatus =2
set listchars=nbsp:~,tab:>-,extends:»,precedes:«,trail:•
set list
set encoding=utf-8
set fileencoding=utf-8

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on


"syntactic
let g:syntastic_error_symbol = "E"
let g:syntastic_warning_symbol = "!"
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_c_checkers=['make']
let g:syntastic_python_checkers=['pycodestyle', 'pep8']



"imap <C-t> <Plug>IMAP_JumpForward
set backupdir=~/.bak,.,~
set directory=~/.bak,.,~

"les .swp ailleur !
set backupdir=~/.backupvim,~/.backupvim/bkbis,~/.backupvim/bktierce,.
set directory=~/.backupvim,~/.backupvim/bkbis,~/.backupvim/bktierce,.

"shortcuts
noremap ° mtgg=G`t
noremap <c-l> :set invnumber<CR>
noremap <c-n> :bn<CR>
noremap <c-p> :bp<CR>
nnoremap <space> za
vnoremap <space> zf

"compile
vnoremap <F3> :!python3<CR>
nnoremap <F3> :!python3 %<CR>
vnoremap <F5> :!make<CR>
nnoremap <F5> :!make<CR>

"couleur glsl
au BufNewFile,BufRead *.shader,*.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl

set foldmethod=indent
set foldnestmax=2

source ~/.vimrc.bepo
