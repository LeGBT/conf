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
"set number
set nonumber
set cpoptions+=n
set clipboard=unnamed
set autoread
set switchbuf=usetab
set cmdheight=2
set efm=%A%f:%l:\ %m,%+Z%p^,%+C%.%#,%-G%.%#
set wildchar=<Tab> wildmenu wildmode=full
set foldmethod=manual
set foldcolumn=2
set background=dark
colorscheme gbt
set shell=/usr/local/bin/zsh
set laststatus =2
set listchars=nbsp:~,tab:>-,extends:»,precedes:«,trail:•
set list
set encoding=utf-8
set fileencoding=utf-8

execute pathogen#infect()

" syntactic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"airline
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '⮀'
let g:airline_right_sep = ''
let g:airline_theme = 'gbt'

"syntactic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_c_checkers=['make']



imap <C-t> <Plug>IMAP_JumpForward
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
vnoremap <F3> :!python<CR>
nnoremap <F3> :!python %<CR>
nnoremap <F6> :!pdflatex -output-directory build -synctex=1 --interaction=nonstopmode $* %<CR>:!cp build/%:t:r.pdf pdfs/%:t:r.pdf <CR>
nnoremap <S-F6> :!open  pdfs/%:t:r.pdf &<CR><CR>

"couleur glsl
au BufNewFile,BufRead *.shader,*.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl
au BufNewFile,BufRead *.data set filetype=data
au BufNewFile,BufRead *TODO* set filetype=todo
au BufNewFile,BufRead *.model set filetype=dosini

" changement de profil iterm2 en utilisant vim
"au VimEnter * !itermrandprofile.sh
"au VimLeave * !echo -e "\033]50;SetProfile=$ITERM_PROFILE\a"

"au BufReadPre ?* setlocal foldmethod=indent
"au BufWinEnter ?* if &fdm == 'indent' | setlocal foldmethod=manual | endif
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview 
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
au BufRead * if search('import pytex', 'nw') | call PYTEX() | endif


fu! MyFoldText()
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = getline(fs)
    endif
    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines"
    let lineCount = line("$")
    let foldLevelStr = repeat("|", v:foldlevel)
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%]"
    let postPerc = repeat(" ", 10-strwidth(foldLevelStr))
    let expansionString = repeat(" ", w - 38 - strwidth(line))
    let preLineNb = repeat(" ", 5-strwidth(fs))
    let preLineCount = repeat(" ", 10-strwidth(foldSizeStr))
    let preFoldPercentage = repeat(" ", 12-strwidth(foldPercentage))
    let out1 = line.expansionString.preLineCount.foldSizeStr.preFoldPercentage.foldPercentage
    let out2 = out1.postPerc.foldLevelStr.preLineNb.fs.' '
    return out2
endfunction

set foldtext=MyFoldText()

function! TextEnableCodeSnip(filetype,start,end,textSnipHl) abort
  let ft=toupper(a:filetype)
  let group='textGroup'.ft
  if exists('b:current_syntax')
    let s:current_syntax=b:current_syntax
    " Remove current syntax definition, as some syntax files (e.g. cpp.vim)
    " do nothing if b:current_syntax is defined.
    unlet b:current_syntax
  endif
  execute 'syntax include @'.group.' syntax/'.a:filetype.'.vim'
  try
    execute 'syntax include @'.group.' after/syntax/'.a:filetype.'.vim'
  catch
  endtry
  if exists('s:current_syntax')
    let b:current_syntax=s:current_syntax
  else
    unlet b:current_syntax
  endif
  execute 'syntax region textSnip'.ft.'
  \ matchgroup='.a:textSnipHl.'
  \ start="'.a:start.'" end="'.a:end.'"
  \ contains=@'.group
endfunction

fu! PYTEX() abort
    call TextEnableCodeSnip('tex', '\"\"\"', '\"\"\"', 'SpecialComment')
endfunction



source ~/.vimrc.bepo

