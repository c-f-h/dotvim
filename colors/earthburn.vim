set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "earthburn"

if version >= 700
  hi CursorLine guibg=#888888
  hi CursorColumn guibg=#e4e2e0
  hi MatchParen guifg=white guibg=#747270 gui=bold

  "Tabpages
  hi TabLine guifg=black guibg=#b0b8c0 gui=italic
  hi TabLineFill guifg=#9098a0
  hi TabLineSel guifg=black guibg=#f0f0f0 gui=italic,bold

  "P-Menu (auto-completion)
  hi Pmenu guifg=white guibg=#a4a2a0
  "PmenuSel
  "PmenuSbar
  "PmenuThumb
endif

hi Normal    guifg=gray30   guibg=#e8e8e0

" Html-Titles
hi Title      guifg=gray30 gui=none
hi Underlined  guifg=gray30 gui=underline

hi Cursor    guifg=white   guibg=#888B19

hi lCursor   guifg=black   guibg=white
hi LineNr    guifg=#b0b0a4
hi LineNr    guifg=#b8b8ac

hi StatusLine guifg=white guibg=#888480 gui=none
hi StatusLineNC guifg=#848280 guibg=#c8c4c0 gui=italic
hi VertSplit guifg=#c0c0c0 guibg=#c0c0c0 gui=NONE

" hi Folded    guifg=#708090 guibg=#c0d0e0
hi Folded    guifg=#848280 guibg=#e8e4e0 gui=italic
hi NonText guifg=#d0d0c0

"hi Comment   guifg=#9098a0 gui=none
hi Comment   guifg=#909084 gui=italic

" Ruby: symbols
hi Constant  guifg=#6A6C19
hi String    guifg=#798616
hi String    guifg=#90A860
hi Number    guifg=#6A6C19
hi link Float Number

" Ruby: do..end, debug, mixin, scope, throw, Python: def
hi Statement guifg=#605118 gui=none

" Ruby: interpolation
hi Operator gui=none  

" HTML: arguments
" Ruby: classname
hi Type  guifg=#99822F gui=none


" Python: Standard exceptions, True&False
hi Structure  guifg=Sienna gui=bold,underline

" Ruby: method definitions and calls
hi Function   guifg=gray30

hi Macro   guifg=#545250 gui=none
hi Directory   guifg=#99822F


hi Identifier guifg=#545250 gui=none

hi Repeat      guifg=#545250 gui=underline

" Ruby: if..else..end
hi Conditional guifg=#804F3E "705623

" Ruby: require
hi PreProc    guifg=#64634B gui=none

" Ruby: def..end, class..end
hi Define guifg=#9d8f42

hi Error      guifg=#a02000 guibg=white gui=bold,underline
hi Todo       guifg=#848280 guibg=NONE gui=bold,underline

" Python: %(...)s - constructs, encoding, D: \n etc
" Ruby: "" 
hi Special guifg=#808000 gui=none

" color of <TAB>s etc...  , NERDTRee
hi SpecialKey guifg=#c4c2c0 guibg=#ececec gui=italic,bold  

" Diff
hi DiffChange guifg=NONE guibg=#e4e2e0 gui=italic
hi DiffText guifg=NONE guibg=#f0e0a0 gui=none
hi DiffAdd guifg=NONE guibg=#c0e0d0 gui=bold
hi DiffDelete guifg=NONE guibg=#f0a0a0 gui=italic,bold

hi link rubyBoolean Boolean
hi link rubyComment Comment
hi link rubyString String
hi link rubyStringDelimiter String

" hi rubyASCIICode
" hi rubyAccess
hi rubyAttribute gui=underline
" hi rubyBeginEnd                gui=            guifg=            guibg=
""hi rubyBlock                   gui=none      
hi rubyBlockArgument gui=underline
hi rubyBlockParameter guifg=#606050
hi link rubyClass Type

""hi rubyClassVariable           gui=none        guifg=#556B2F     guibg=white
""hi rubyConstant                gui=none        guifg=#DC143C     guibg=white
" do..end"
hi rubyControl                 guifg=sienna gui=none
""hi rubyCurlyBlock              gui=none        guifg=#008B8B     guibg=white
" hi rubyData                    gui=            guifg=            guibg=
" hi rubyDataDirective           gui=            guifg=            guibg=
" hi rubyDefine                  gui=            guifg=            guibg=
" hi rubyDelimEscape
"hi rubyDoBlock guifg=SlateBlue
" hi rubyDocumentation           gui=            guifg=            guibg=
" hi rubyError
" hi rubyEscape
" hi rubyEval
" hi rubyException               gui=            guifg=            guibg=
""hi rubyExprSubst               gui=underline        guifg=#FF4500     
" hi rubyFloat
hi rubyFunction                gui=none        guifg=#9d8f42
"hi rubyGlobalVariable          gui=none            guifg=cyan
hi link rubyHeredocStart Comment
hi link rubyHeredocEnd Comment
" hi rubyIdentifier              gui=underline
" hi rubyInclude                 gui=            guifg=            guibg=         
 hi rubyInstanceVariable        gui=none            guifg=gray20
" hi rubyInteger
"hi rubyInterpolation guifg=Orange
hi rubyIterator                gui=underline        guifg=black
hi link rubyKeyword Normal
" hi rubyKeywordAsMethod
""hi rubyLocalVariableOrMethod guifg=cyan
" hi rubyModule
" hi rubyNestedAngleBrackets
" hi rubyNestedCurlyBraces
" hi rubyNestedParentheses
" hi rubyNestedSquareBrackets
" hi rubyNoDoBlock
" hi rubyNoInterpolation
" hi rubyNumber                  gui=            guifg=            guibg=
" hi rubyOperator
" hi rubyOptDoBlock
" hi rubyOptDoLine
" hi rubyPredefinedConstant      gui=            guifg=            guibg=
" hi rubyPredefinedIdentifier    gui=            guifg=            guibg=
" hi rubyPredefinedVariable      gui=            guifg=            guibg=
" hi rubyPseudoVariable
" hi rubySharpBang               gui=            guifg=            guibg=
" hi rubySpaceError
hi rubySymbol                  gui=none        guifg=#6A6C19
" hi rubyTodo                    gui=            guifg=            guibg=
