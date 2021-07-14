" Scheme setup {{{
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

"}}}
" Vim UI {{{
hi Normal              guifg=#f8f8f2
hi Cursor              guifg=#f8f8f2     guibg=#F55D5E
hi CursorLine          guibg=#2e333a cterm=none
hi MatchParen          guifg=#f8f8f2      cterm=underline
hi Pmenu               guifg=#d1d1d1    guibg=#2e333a
hi PmenuThumb          guibg=#f8f8f2
hi PmenuSBar           guibg=#52575e
hi PmenuSel            guifg=#2e333a     guibg=#ff840a
hi ColorColumn         guibg=#2e333a
hi SpellBad            guifg=#F55D5E      cterm=underline
hi SpellCap            guifg=#6ED84C     cterm=underline
hi SpellRare           guifg=#7FD8E0     cterm=underline
hi SpellLocal          guifg=#ae81ff     cterm=underline
hi NonText             guifg=#6D747D
hi LineNr              guifg=#52575e     cterm=bold
hi CursorLineNr        guifg=#ff840a     cterm=bold
hi Visual              guifg=#2e333a     guibg=#AE81FF
hi IncSearch           guifg=#2e333a     guibg=#ae81ff    cterm=none
hi Search              guifg=#2e333a     guibg=#F5DE37
hi VertSplit           guifg=#2e333a     cterm=bold
hi EndOfBuffer         guibg=#23282e     guifg=#6D747D
hi Folded              guifg=#F5DE37     cterm=bold
hi Conceal             guifg=#F5DE37
hi Directory           guifg=#4DD4E0     cterm=none
hi Title               guifg=#7FD8E0     cterm=bold
hi ErrorMsg            guibg=#23282e     guifg=#F54344      cterm=bold
hi DiffAdd             guifg=#2e333a     guibg=#78D85A
hi DiffChange          guifg=#2e333a     guibg=#FF9C39
hi DiffDelete          guifg=#2e333a     guibg=#F55D5E
hi DiffText            guifg=#2e333a     guibg=#7FD8E0    cterm=bold
hi User1               guifg=#F55D5E     guibg=#2e333a
hi User2               guifg=#ff840a     guibg=#2e333a
hi User3               guifg=#FF9C39     guibg=#2e333a
hi User4               guifg=#78D85A     guibg=#2e333a
hi User5               guifg=#AE81FF     guibg=#2e333a
hi User6               guifg=#F5DE37     guibg=#2e333a
hi User7               guifg=#f8f8f2     guibg=#2e333a
hi User8               guifg=#6D747D     guibg=#2e333a
hi User9               guifg=#F54344     guibg=#2e333a
hi User10              guifg=#4DD4E0    guibg=#2e333a
hi User11              guifg=#7FD8E0    guibg=#2e333a
hi User12              guifg=#6ED84C    guibg=#2e333a
hi User13              guifg=#ae81ff    guibg=#2e333a
hi User14              guifg=#F5DE37    guibg=#2e333a
hi User15              guifg=#d1d1d1    guibg=#2e333a
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link WildMenu      Visual
hi! link FoldColumn    SignColumn
hi! link WarningMsg    ErrorMsg
hi! link MoreMsg       Title
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link SpecialKey    NonText

"}}}
" Generic syntax {{{
hi Delimiter       guifg=#f8f8f2
hi Comment         guifg=#6D747D
hi Underlined      guifg=#ff840a cterm=underline
hi Type            guifg=#ff840a
hi String          guifg=#7FD8E0 cterm=bold
hi Keyword         guifg=#ff840a
hi Todo            guibg=#23282e guifg=#ff840a cterm=bold,underline
hi Urgent          guifg=#F55D5E cterm=bold,underline
hi Done            guifg=#78D85A cterm=bold,underline
hi Function        guifg=#F5DE37 cterm=bold
" hi Function        guifg=#F5DE37  cterm=italic
hi Identifier      guifg=#f8f8f2 cterm=none
hi Statement       guifg=#ff840a cterm=bold
hi Constant        guifg=#ae81ff
hi Number          guifg=#4DD4E0 cterm=bold
hi Boolean         guifg=#78D85A
hi Special         guifg=#ae81ff
hi Ignore          guifg=#2e333a
hi PreProc         guifg=#ae81ff   cterm=bold
hi Operator        guifg=#F5DE37   cterm=bold
hi Define          guifg=#ff840a   cterm=none
hi! link Error     ErrorMsg

" Extra TODO
hi Conditional     guifg=#FF9C39   cterm=bold
hi Exception     guifg=#FF9C39   cterm=none

"}}}
" HTML {{{
hi htmlTagName              guifg=#ff840a
hi htmlTag                  guifg=#ff840a
hi htmlArg                  guifg=#4DD4E0
hi htmlH1                   cterm=bold
hi htmlBold                 cterm=bold
hi htmlItalic               cterm=underline
hi htmlUnderline            cterm=underline
hi htmlBoldItalic           cterm=bold,underline
hi htmlBoldUnderline        cterm=bold,underline
hi htmlUnderlineItalic      cterm=underline
hi htmlBoldUnderlineItalic  cterm=bold,underline
hi! link htmlLink           Underlined
hi! link htmlEndTag         htmlTag

"}}}
" XML {{{
hi xmlTagName       guifg=#78D85A
hi xmlTag           guifg=#6ED84C
hi! link xmlString  xmlTagName
hi! link xmlAttrib  xmlTag
hi! link xmlEndTag  xmlTag
hi! link xmlEqual   xmlTag

"}}}
" JavaScript {{{
hi! link javaScript        Normal
hi! link javaScriptBraces  Delimiter

"}}}
" PHP {{{
hi phpSpecialFunction    guifg=#AE81FF
hi phpIdentifier         guifg=#7FD8E0
hi phpParent             guifg=#6D747D
hi! link phpVarSelector  phpIdentifier
hi! link phpHereDoc      String
hi! link phpDefine       Statement

"}}}
" Lua {{{
hi luaIfThen guifg=#ff840a cterm=bold
hi luaCond guifg=#ff840a cterm=bold
"}}}
" Markdown {{{
hi markdownHeadingRule          guifg=#FF9C39
hi! link markdownHeadingDelimiter   markdownHeadingRule
hi! link markdownLinkDelimiter      Delimiter
hi! link markdownURLDelimiter       Delimiter
hi! link markdownCodeDelimiter      NonText
hi markdownLinkDelimiter    guifg=#d1d1d1 cterm=none
hi! link markdownLinkTextDelimiter  markdownLinkDelimiter
hi markdownLinkText         guifg=#4DD4E0 cterm=bold,underline
hi! link markdownUrl                markdownLinkText
hi! link markdownUrlTitleDelimiter  markdownLinkText
hi! link markdownAutomaticLink      markdownLinkText
hi! link markdownIdDeclaration      markdownLinkText
hi markdownCode                     guifg=#78D85A cterm=none
hi! link markdownCodeBlock          String
hi! link markdownCodeBlock markdownCode
hi! link markdownCodeDelimiter markdownCode
hi markdownBold                     guifg=#AE81FF cterm=bold
hi markdownItalic                   guifg=#AE81FF cterm=italic
hi markdownBlockquote               guifg=#d1d1d1 cterm=italic,bold
hi markdownRule                     guifg=#d1d1d1 cterm=italic,bold

hi markdownH1 guifg=#FF9C39 cterm=bold
hi markdownH2 guifg=#FF9C39 cterm=bold
hi markdownH3 guifg=#ff840a cterm=bold
hi markdownH4 guifg=#ff840a cterm=bold
hi markdownH5 guifg=#ff840a cterm=none
hi markdownH6 guifg=#ff840a cterm=none

hi markdownListMarker guifg=#F5DE37 cterm=bold
hi markdownOrderedListMarker guifg=#FF9C39 cterm=bold

"}}}
" Ruby {{{
hi! link rubyDefine                 Statement
hi! link rubyLocalVariableOrMethod  Identifier
hi! link rubyConstant               Constant
hi! link rubyInstanceVariable       Number
hi! link rubyStringDelimiter        rubyString

"}}}
" Git {{{
hi gitCommitBranch               guifg=#FF9C39
hi gitCommitSelectedType         guifg=#4DD4E0
hi gitCommitSelectedFile         guifg=#ff840a
hi gitCommitUnmergedType         guifg=#F54344
hi gitCommitUnmergedFile         guifg=#F55D5E
hi! link gitCommitFile           Directory
hi! link gitCommitUntrackedFile  gitCommitUnmergedFile
hi! link gitCommitDiscardedType  gitCommitUnmergedType
hi! link gitCommitDiscardedFile  gitCommitUnmergedFile

"}}}
" Vim {{{
hi! link vimSetSep    Delimiter
hi! link vimContinue  Delimiter
hi! link vimHiAttrib  Constant
hi! vimHiKeyList  guifg=#d1d1d1
hi! link vimGroup vimHiKeyList

"}}}
" LESS {{{
hi lessVariable             guifg=#7FD8E0
hi! link lessVariableValue  Normal

"}}}
" NERDTree {{{
hi! link NERDTreeHelp      Comment
hi! link NERDTreeExecFile  String

"}}}
" Vimwiki {{{
hi! link VimwikiBold markdownBold
hi! link VimwikiItalic markdownItalic
hi! link VimwikiBoldChar markdownBold
hi! link VimwikiItalicChar markdownItalic
hi! link VimwikiBoldCharT   VimwikiBoldChar
hi! link VimwikiItalicCharT   VimwikiItalicChar
hi VimwikiBoldItalicChar guifg=#F5DE37 cterm=italic,bold
hi! link VimwikiItalicBoldChar VimwikiBoldItalicChar
hi! link VimwikiBoldItalicCharT VimwikiBoldItalicChar
hi! link VimwikiItalicBoldCharT VimwikiBoldItalicChar
" VimwikiEqInChar xxx links to VimwikiMarkers
" VimwikiDelTextChar xxx links to VimwikiMarkers
" VimwikiEqInCharT xxx links to VimwikiMarkers
" VimwikiCodeCharT xxx links to VimwikiMarkers
" VimwikiDelTextCharT xxx links to VimwikiMarkers
hi! link VimwikiHeaderChar  markdownHeadingDelimiter
hi! link VimwikiList        markdownListMarker
hi! link VimwikiCode        markdownCode
hi! link VimwikiCodeChar    markdownCodeDelimiter
hi! link VimwikiHeader1     markdownH1
hi! link VimwikiHeader2     markdownH2
hi! link VimwikiHeader3     markdownH3
hi! link VimwikiHeader4     markdownH4
hi! link VimwikiHeader5     markdownH5
hi! link VimwikiHeader6     markdownH6

"}}}
" Help {{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

"}}}
" CtrlP {{{
hi CtrlPMatch   guifg=#F55D5E   cterm=bold
hi CtrlPLinePre guifg=#F5DE37 cterm=bold

"}}}
" Mustache {{{
hi mustacheSection           guifg=#F5DE37  cterm=bold
hi mustacheMarker            guifg=#F5DE37
hi mustacheVariable          guifg=#F5DE37
hi mustacheVariableUnescape  guifg=#F54344
hi mustachePartial           guifg=#ae81ff

"}}}
" Shell {{{
hi shDerefSimple guifg=#7FD8E0
hi shDo guifg=#FF9C39
hi! link shDerefVar  shDerefSimple

"}}}
" Syntastic {{{
hi SyntasticWarningSign       guifg=#FF9C39 
hi SyntasticErrorSign         guifg=#F55D5E 
hi SyntasticStyleWarningSign  guifg=#78D85A 
hi SyntasticStyleErrorSign    guifg=#ff840a 

"}}}
" Netrw {{{
hi netrwExe       guifg=#F54344
hi netrwClassify  guifg=#6D747D  cterm=bold

"}}}
" Ledger {{{
hi ledgerAccount  guifg=#7FD8E0
hi! link ledgerMetadata  Comment
hi! link ledgerTransactionStatus  Statement

"}}}
" Diff {{{
hi diffAdded  guifg=#ff840a
hi diffRemoved  guifg=#F55D5E
hi! link diffFile  PreProc
hi! link diffLine  Title

"}}}
" Plug {{{
hi plugSha  guifg=#FF9C39

"}}}
" Blade {{{
hi! link bladeStructure  PreProc
hi! link bladeParen      phpParent
hi! link bladeEchoDelim  PreProc

"}}}
" Solidity {{{
hi! link solStorageType      Keyword
hi! link solFuncStorageType  Keyword
hi! link solStorageConst     Keyword
hi! link solParens           Normal
hi! link solComma            Normal
hi! link solMapping          Define
hi! link solEnum             Define
hi! link solStruct           Define
hi! link solNumber           Number
hi! link solString           String
hi! link solString           String
hi! link solOperator         Operator
hi! link solDestructure      Keyword
hi! link solFunction         Define
hi! link solConstructor      Define
hi! link solFuncName         Function
hi! link solFuncModifier     Keyword
hi! link solFuncModCustom    Keyword
hi! link solFuncCall         Function
hi! link solFuncReturn       Special
hi! link solModifier         Define
hi! link solModifierName     Function
hi! link solModifierInsert   Function
hi! link solContract         Define
hi! link solContractName     Function
hi! link solInheritor        Keyword
hi! link solLibUsing         Special
hi! link solLibName          Type
hi! link solEvent            Define
hi! link solEventName        Function
hi! link solEventParamMod    Keyword
hi! link solEmitEvent        Special
hi! link solConstant         Constant
hi! link solReserved         Error
hi! link solPragma           PreProc
hi! link solAssemblyBlock    PreProc
hi! link solAssemblyName     Special
hi! link solAssemblyOperator Operator
hi! link solAssemblyLet      Keyword
hi! link solAssemblyMethod   Special
hi! link solAssemblyConst    Constant
hi! link solAssemblyCond     Conditional
hi! link solMethod           Special
hi! link solRepeat           Repeat
hi! link solLabel            Label
hi! link solException        Exception
hi! link solValueType        Type
hi! link solTypeCast         Type
hi! link solIf               Keyword
hi! link solElse             Keyword
hi! link solLoop             Keyword
hi! link solTodo             Todo
hi! link solComment          Comment
hi! link solNatspecTag       SpecialComment
hi! link solNatspecBlock     Comment
hi! link solNatspecParam     Define


" }}}
" FZF {{{
hi FzfMain guifg=#f8f8f2 guibg=#2e333a
hi FzfMargin guifg=#f8f8f2 guibg=#2e333a
hi FzfHighlight guifg=#F55D5E guibg=#F55D5E
hi FzfBorder guifg=#F5DE37
hi FzfBgPlus guibg=#2e333a cterm=none
hi FzfBorderFloating guibg=#2e333a guifg=#F55D5E
"}}}
" Vim Sneak {{{
hi Sneak guifg=#2e333a cterm=bold guibg=#7FD8E0
hi SneakScope guifg=#2e333a cterm=bold guibg=#F5DE37
hi SneakLabel guifg=#2e333a cterm=bold guibg=#7FD8E0

"}}}
" GitGutter {{{
hi GitGutterAdd guifg=#6ED84C cterm=bold
hi GitGutterChange guifg=#4DD4E0 cterm=bold
hi GitGutterDelete guifg=#F54344 cterm=bold
hi GitGutterChangeDelete guifg=#7FD8E0 cterm=bold

hi GitGutterAddLine guifg=#6ED84C cterm=bold
hi GitGutterChangeLine guifg=#4DD4E0 cterm=bold
hi GitGutterDeleteLine guifg=#F54344 cterm=bold
hi GitGutterChangeDeleteLine guifg=#7FD8E0 cterm=bold

highlight link diffAdded DiffAdd
highlight link diffChanged DiffChange
highlight link diffRemoved DiffDelete
"}}}
" highlightedyank
" highlight HighlightedyankRegion cterm=reverse gui=reverse
highlight HighlightedyankRegion guibg=#ff840a guifg=#2e333a cterm=none

" StatusLine
hi StatusLine guifg=#f8f8f2 guibg=#2e333a cterm=bold
hi StatusLineNC guifg=#6D747D guibg=#2e333a cterm=bold

" Bubbles
hi BubbleEdge guifg=#2e333a
hi BubbleTextMode guibg=#2e333a guifg=#6ED84C
hi BubbleTextFilename guibg=#2e333a guifg=#f8f8f2 cterm=bold
hi BubbleTextLine guibg=#2e333a guifg=#AE81FF cterm=bold
hi BubbleTextCol guibg=#2e333a guifg=#78D85A cterm=bold
hi BubbleTextSep guibg=#2e333a guifg=#6D747D cterm=bold
hi BubbleTextPerc guibg=#2e333a guifg=#7FD8E0 cterm=bold
hi BubbleTextTotal guibg=#2e333a guifg=#AE81FF cterm=bold
hi BubbleTextFiletype guibg=#2e333a guifg=#ff840a cterm=bold
hi BubbleTextDot guibg=#2e333a guifg=#6D747D cterm=none

" TabLine
" Selected tab colors
hi CustomTablineStartSel guifg=#F54344
hi CustomTablineLabelSel guibg=#F54344 guifg=#f8f8f2 cterm=bold
hi CustomTablineTransitionSel guibg=#2e333a guifg=#F54344 cterm=bold
hi CustomTablineBodySel guibg=#2e333a guifg=#f8f8f2 cterm=bold
hi CustomTablineEndSel guifg=#2e333a

" Inactive tab colors
hi CustomTablineStart guifg=#2e333a
hi CustomTablineLabel guibg=#2e333a guifg=#FF9C39 cterm=bold
hi CustomTablineTransition guifg=#2e333a cterm=bold
hi CustomTablineBody guifg=#6D747D cterm=bold
hi CustomTablineEnd guifg=#2e333a
