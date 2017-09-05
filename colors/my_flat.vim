let g:colors_name = "flat"

hi Boolean        cterm=none            ctermfg=6     ctermbg=none
hi Comment        cterm=italic          ctermfg=8     ctermbg=none
hi Constant       cterm=none            ctermfg=6     ctermbg=none
hi Function       cterm=none            ctermfg=4     ctermbg=none
hi Identifier     cterm=none            ctermfg=4     ctermbg=none
hi PreProc        cterm=none            ctermfg=11    ctermbg=none
hi Special        cterm=none            ctermfg=1     ctermbg=none
hi StorageClass   cterm=none            ctermfg=3     ctermbg=none
hi Statement      cterm=none            ctermfg=2     ctermbg=none
hi Type           cterm=none            ctermfg=3     ctermbg=none

hi Underlined     cterm=none            ctermfg=12    ctermbg=none
hi Ignore         cterm=bold,underline  ctermfg=3     ctermbg=none
hi Error          cterm=bold,underline  ctermfg=1     ctermbg=none
hi Todo           cterm=none            ctermfg=11     ctermbg=none

hi StatusLine     cterm=none            ctermfg=8     ctermbg=0
hi StatusLineNC   cterm=bold            ctermfg=none  ctermbg=8
hi Visual         cterm=none            ctermfg=none  ctermbg=7
hi Directory      cterm=none            ctermfg=4     ctermbg=none
hi ErrorMsg       cterm=bold            ctermfg=1     ctermbg=none
hi IncSearch      cterm=bold            ctermfg=none  ctermbg=3
hi Search         cterm=none            ctermfg=none  ctermbg=3
hi MoreMsg        cterm=none            ctermfg=4     ctermbg=none
hi ModeMsg        cterm=none            ctermfg=4     ctermbg=none
hi LineNr         cterm=none            ctermfg=10    ctermbg=0
hi Question       cterm=bold            ctermfg=6     ctermbg=none
hi VertSplit      cterm=bold            ctermfg=7     ctermbg=7

hi Title          cterm=bold            ctermfg=10    ctermbg=none
hi VisualNOS      cterm=standout,bold   ctermfg=none  ctermbg=0
hi WarningMsg     cterm=bold            ctermfg=1     ctermbg=none
hi WildMenu       cterm=bold            ctermfg=8     ctermbg=0
hi Folded         cterm=underline,bold  ctermfg=10    ctermbg=0
hi FoldedColumn   cterm=none            ctermfg=10    ctermbg=0

hi DiffAdd        cterm=none            ctermfg=2     ctermbg=0
hi DiffChange     cterm=none            ctermfg=3     ctermbg=0
hi DiffDelete     cterm=none            ctermfg=1     ctermbg=0
hi DiffText       cterm=none            ctermfg=4     ctermbg=0

hi SignColumn     cterm=none            ctermfg=none  ctermbg=none
hi Conceal        cterm=none            ctermfg=4     ctermbg=none
hi SpellBad       cterm=undercurl       ctermfg=1     ctermbg=none
hi SpellCap       cterm=undercurl       ctermfg=11    ctermbg=none
hi SpellRare      cterm=undercurl       ctermfg=14    ctermbg=none
hi SpellLocal     cterm=undercurl       ctermfg=11    ctermbg=none

hi MatchParen     cterm=bold            ctermfg=7     ctermbg=none
hi Pmenu          cterm=none            ctermfg=7     ctermbg=0

" html

hi htmlTag ctermfg=darkgrey
hi htmlEndTag ctermfg=darkgrey
hi htmlTagN ctermfg=none
hi htmlTagName ctermfg=blue
hi htmlSpecialTagName ctermfg=blue
hi htmlArg ctermfg=8
hi javaScript ctermfg=yellow

" tex

hi texStatement ctermfg=cyan
hi texMathZoneX ctermfg=yellow
hi texMathMatcher ctermfg=yellow
hi texRefLabel ctermfg=yellow
