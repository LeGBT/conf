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
set number
set cpoptions+=n
set clipboard=unnamed
set autoread
set switchbuf=usetab
set cmdheight=2
set efm=%A%f:%l:\ %m,%+Z%p^,%+C%.%#,%-G%.%#
set wildchar=<Tab> wildmenu wildmode=full
set background=dark
set shell=/usr/local/bin/zsh
set laststatus =2
set listchars=nbsp:~,tab:>-,extends:»,precedes:«,trail:•
set list
set encoding=utf-8
set fileencoding=utf-8
"colo slate
highlight LineNr ctermbg=blue

" Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

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
vnoremap <F3> :term make %:r.pdf<CR>
nnoremap <F3> :term make %:r.pdf<CR>
vnoremap <F5> :term make<CR>
nnoremap <F5> :term make<CR>

"couleur glsl
au BufNewFile,BufRead *.shader,*.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl
au BufNewFile,BufRead *.optex,*.plain, set filetype=plaintex

set foldmethod=syntax
set foldnestmax=2
function MyFoldText()
    let line = getline(v:foldstart)
    return v:folddashes . line
endfunction
set foldtext=MyFoldText()

source ~/.vimrc.bepo
