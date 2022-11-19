"prefs
set t_Co=16
set nocompatible

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
set background=light
set shell=/usr/local/bin/zsh
set laststatus=2
set listchars=nbsp:~,tab:>-,extends:»,precedes:«,trail:•
set list
set encoding=utf-8
set fileencoding=utf-8

set statusline=
set statusline +=%1*\ b%n\ %*           "buffer number
set statusline +=%2*\ %{&ff}%*          "file format
set statusline +=%2*%y\ %*              "file type
set statusline +=%3*\ %<%F\ %*          "full path
set statusline +=%4*%m%*                "modified flag
set statusline +=%5*%=%*                "filling
set statusline +=%6*%5l%*               "current line
set statusline +=%7*/%L\ %*             "total lines
set statusline +=%8*%4v\ %*             "virtual column number
set statusline +=%9*\ 0x%04B\ %*          "character under cursor

"colo slate
"colo ir_black
"colo shine
"
colo default

highlight SpecialKey     ctermfg=4
highlight TermCursor     cterm=reverse
highlight NonText        ctermfg=12
highlight Directory      ctermfg=4
highlight ErrorMsg       ctermfg=15 ctermbg=1
highlight IncSearch      cterm=reverse
highlight MoreMsg        ctermfg=2
highlight ModeMsg        cterm=bold
highlight Question       ctermfg=2
highlight Title          ctermfg=5
highlight WarningMsg     ctermfg=1
highlight WildMenu       ctermfg=0 ctermbg=11
highlight Conceal        ctermfg=7 ctermbg=7
highlight SpellBad       ctermbg=9
highlight SpellRare      ctermbg=13
highlight SpellLocal     ctermbg=14
highlight PmenuSbar      ctermbg=8
highlight PmenuThumb     ctermbg=0
highlight TabLine        cterm=underline ctermfg=0 ctermbg=7
highlight TabLineSel     cterm=bold
highlight TabLineFill    cterm=reverse
highlight CursorColumn   ctermbg=7
highlight CursorLine     cterm=underline
highlight MatchParen     ctermbg=14
highlight Constant       ctermfg=1
highlight Special        ctermfg=5
highlight Identifier     cterm=NONE ctermfg=6
highlight Statement      ctermfg=12
highlight PreProc        ctermfg=5
highlight Type           ctermfg=4
highlight Underlined     cterm=underline ctermfg=5
highlight Ignore         ctermfg=15
highlight Error          ctermfg=15 ctermbg=9
highlight Todo           ctermfg=0  ctermbg=11
highlight LineNr         ctermfg=3  ctermbg=4
highlight Comment        ctermfg=7
highlight User1          ctermfg=8  ctermbg=7
highlight User2          ctermfg=3  ctermbg=4
highlight User3          ctermfg=0  ctermbg=3
highlight User4          ctermfg=5  ctermbg=3
highlight User5          ctermfg=3  ctermbg=NONE
highlight User6          ctermfg=3  ctermbg=4
highlight User7          ctermfg=3  ctermbg=4
highlight User8          ctermfg=3  ctermbg=12
highlight User9          ctermfg=0  ctermbg=7

set ruler

" Pathogen load
"filetype off
"call pathogen#infect()
"call pathogen#helptags()


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
