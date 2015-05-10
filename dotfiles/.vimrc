"=== Colors ==="
colorscheme andrewcmaxwell-1.vim

syntax on

set number                      " Show line numbers
set cursorline                  " Highlight the currently selected line
set undolevels=1000             " Set undo amount to 1000
set ignorecase                  " Enable case insenstive search
set ruler                       " show current position at bottom
"set list                        " show invisible characters
"set mouse=a                     " try to use a mouse in the console (wimp!)
set showmatch                   " show matching brackets
set autoindent                  " set the cursor at same indent as line above
set smartindent                 " try to be smart about indenting (C-style)
set expandtab                   " expand <Tab>s with spaces; death to tabs!
set shiftwidth=4                " spaces for each step of (auto)indent
set softtabstop=4               " set virtual tab stop (compat for 8-wide tabs)
set tabstop=4                   " for proper display of files with tabs
set shiftround                  " always round indents to multiple of shiftwidth
set copyindent                  " use existing indents for new indents
set preserveindent              " save as much indent structure as possible
set encoding=utf-8
set ls=2            " always show status line                                                                                               
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set nobackup        " do not keep backup files
set paste
set smarttab
set smartcase


"Set the list characters
set listchars=tab:▸\
set listchars=nbsp:·
set listchars=eol:¬


"------ Filetypes ------"

" Vimscript
autocmd FileType vim setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" Shell
autocmd FileType sh setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" Lisp
autocmd Filetype lisp,scheme setlocal equalprg=~/.vim/bin/lispindent.lisp expandtab shiftwidth=2 tabstop=8 softtabstop=2
" Ruby
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" PHP
autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" X?HTML & XML
autocmd FileType html,xhtml,xml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" CSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" JavaScript
" autocmd BufRead,BufNewFile *.json setfiletype javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
let javascript_enable_domhtmlcss=1
