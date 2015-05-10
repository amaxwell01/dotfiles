" Vim color file
" Maintainer:   Andrew Maxwell <amaxwell01@gmail.com>
" Website:      http://andrewcmaxwell.com

set background=dark
set t_Co=256

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="andrewmaxwell-1"

"hi Comment          ctermfg=155         ctermbg=16        cterm=italic
hi Constant         ctermfg=208         ctermbg=None        cterm=None "This is dark orange"
hi Current          ctermfg=208         ctermbg=None        cterm=None
hi Cursor           ctermfg=Red         ctermbg=None        cterm=None
hi CursorLine       ctermfg=None        ctermbg=236         cterm=None
hi Normal           ctermfg=253         ctermbg=16          cterm=None
hi SpecialKey       ctermfg=87          ctermbg=None        cterm=Bold
hi Directory        ctermfg=76          ctermbg=None        cterm=None
hi ErrorMsg         ctermfg=124         ctermbg=White       cterm=None
hi PreProc          ctermfg=246         ctermbg=None        cterm=Bold
hi Search           ctermfg=160         ctermbg=232         cterm=Bold "This is red"
hi Type             ctermfg=75          ctermbg=None        cterm=Bold
hi Statement        ctermfg=75          ctermbg=None        cterm=None
hi Identifier       ctermfg=111         ctermbg=None        cterm=Bold
hi DiffText         ctermfg=88          ctermbg=250         cterm=None
hi Todo             ctermfg=233         ctermbg=118         cterm=Bold
hi Error            ctermfg=233         ctermbg=124         cterm=Bold
hi Special          ctermfg=160         ctermbg=None        cterm=Bold
hi Ignore           ctermfg=220         ctermbg=None        cterm=Bold
hi Underline        ctermfg=244         ctermbg=None        cterm=None
hi visual           ctermfg=none        ctermbg=236         cterm=none

hi FoldColumn       ctermfg=247         ctermbg=None        cterm=Bold
hi StatusLineNC     ctermfg=247         ctermbg=234         cterm=None
hi StatusLine       ctermfg=247         ctermbg=233         cterm=Bold
hi VertSplit        ctermfg=247         ctermbg=234         cterm=Bold

hi LineNr           ctermfg=247         ctermbg=235        cterm=Bold
hi NonText          ctermfg=87          ctermbg=None       cterm=Bold

hi Pmenu            ctermfg=White       ctermbg=DarkGray    cterm=None
hi PmenuSel         ctermfg=None        ctermbg=Gray        cterm=Bold
hi PmenuSbar        ctermfg=DarkGray    ctermbg=DarkGray    cterm=None
hi PmenuThumb       ctermfg=Gray        ctermbg=Gray        cterm=None

hi! link Macro          PreProc
hi! link Boolean        Constant
hi! link Character      Constant
hi! link Conditional    Statement
hi! link CursorColumn   CursorLine
hi! link Debug          PreProc
hi! link Define         PreProc
hi! link Delimiter      Search
hi! link Directory      Statement
hi! link Error          Todo
hi! link ErrorMsg       Error
hi! link Exception      Statement
hi! link Float          Constant
hi! link FoldColumn     Folded
hi! link Function       Identifier
hi! link Ignore         Comment
hi! link Include        PreProc
hi! link IncSearch      Search
hi! link Keyword        Identifier
hi! link Label          Statement
hi! link MatchParen     Statement
hi! link MoreMsg        Identifier
"hi! link NonText        Comment
hi! link Number         Constant
hi! link Operator       Identifier
hi! link Question       MoreMsg
hi! link PreCondit      Preproc
hi! link Repeat         Statement
hi! link SignColumn     Identifier
hi! link SpecialChar    Special
hi! link SpecialComment Special
hi! link SpecialKey     Special
hi! link SpellBad       Error
hi! link SpellCap       Error
hi! link SpellLocal     Error
hi! link SpellRare      Error
hi! link StorageClass   Type
hi! link String         Constant
hi! link Structure      Type
hi! link Title          Structure
hi! link Typedef        Type
hi! link WarningMsg     Error
"vim: sw=4