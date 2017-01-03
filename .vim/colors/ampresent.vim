" vim:fdm=marker sw=2 sts=2 ts=2 expandtab

hi clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="ampresent"

hi Normal          guifg=#000000 guibg=#FFFFFF"{{{
hi VisualNOS                     guibg=#D0D0B6
hi Visual                        guibg=#D0D0B6
hi Cursor          guifg=#000000 guibg=#20BBFC
hi iCursor         guifg=#000000 guibg=#20BBFC
hi LineNr          guifg=#909090 guibg=#E2E2E2
hi CursorLine                    guibg=#C0f5FF
hi CursorLineNr    guifg=#000000 guibg=#C0f5FF gui=bold
hi CursorColumn                  guibg=#C0f5FF
hi ColorColumn                   guibg=#F5F5F5
hi SignColumn      guifg=#555555 guibg=#E2E2E2
hi FoldColumn      guifg=#87877D guibg=#E2E2E2
hi Folded          guifg=#87877D guibg=#C8C8BE   "}}}

hi TabLineFill     guifg=#E0E0E0 guibg=#B0B0B0
hi TabLine         guibg=#B4B4AA guifg=#808080 gui=none
hi StatusLine      guifg=#AFFFFF guibg=#005FFF
hi WildMenu        guifg=#FFFFFF guibg=#005FFF
hi StatusLineNC    guifg=NONE    guibg=NONE
hi VertSplit       guifg=#808080 guibg=NONE    gui=bold

hi Delimiter       guifg=#8F8F8F
hi Ignore          guifg=#87877D guibg=bg
hi Conceal         guifg=#404040
hi NonText         guifg=#b5b5b5               gui=NONE
hi SpecialKey      guifg=#b5b5b5
hi SpecialComment  guifg=#b5b5b5               gui=bold
hi Special         guifg=#0030F0 guibg=bg      gui=bold

hi DiffAdd                       guibg=#c6dca0 
hi DiffChange                    guibg=#f9ffb0
hi DiffDelete      guifg=#505050 guibg=#f0c8be
hi DiffText                      guibg=#FFFFFF gui=italic,bold

hi MatchParen      guifg=#505000 guibg=#F0F050 gui=bold
hi MatchError      guifg=#FFFFFF guibg=#c000c0

hi Tag             guifg=#0030F0               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#A09B6B guibg=bg      gui=bold
hi Directory       guifg=#0030F0               gui=bold

hi Error           guifg=#D00000 guibg=#ffc3c0
hi ErrorMsg        guifg=#D00000 guibg=#ffc3c0 
hi WarningMsg      guifg=#B0A000 guibg=#fff080 
hi ModeMsg         guifg=#605000
hi MoreMsg         guifg=#605000
hi Question        guifg=#006EB4

hi Pmenu           guifg=#e5e5e4 guibg=#707065
hi PmenuSel        guifg=#303030 guibg=#C8C8BE
hi PmenuSbar                     guibg=#404035
hi PmenuThumb      guifg=#006EB4

hi Search          guifg=NONE    guibg=#FFF0A0
hi IncSearch       guifg=#B0FF20 guibg=#000000

" spell checking
if has("spell")
    hi SpellBad    guisp=#D02000 gui=undercurl
    hi SpellCap    guisp=#006EB4 gui=undercurl
    hi SpellLocal  guisp=#009614 gui=undercurl
    hi SpellRare   guisp=#6496AA gui=undercurl
endif

"--------------------------------------------------------------------
" plugins
"--------------------------------------------------------------------
" signify
" highlight all the lowercase marks
hi ShowMarksHLl    guifg=#00B619 guibg=#C0FFC0 gui=NONE
" highlight all the uppercase marks
hi ShowMarksHLu    guifg=#00B619 guibg=#C0FFC0 gui=bold    
" highlight all other marks
hi ShowMarksHLo    guifg=#006EFF guibg=#D0E0FF gui=NONE
" when multiple marks are on the same line
hi ShowMarksHLm    guifg=#C88200 guibg=#FFF0A0 gui=bold"}}}

hi Debug           guifg=#BCA3A3               gui=bold
hi Underlined      guifg=#808080               gui=underline
hi CleverF         guifg=#D000C0 guibg=#FFE0FF
hi Flashy          guibg=#F0F0C0 ctermbg=229

" Syntastic
hi SyntasticErrorSign         guifg=#D02000 guibg=#E2E2E2 gui=bold 
hi SyntasticWarningSign       guifg=#DAD520 guibg=#E2E2E2 gui=bold
hi SyntasticStyleErrorSign    guifg=#D05050 guibg=#E2E2E2 gui=bold
hi SyntasticStyleWarningSign  guifg=#DAD560 guibg=#E2E2E2 gui=bold

" GitGutter
hi GitGutterAdd               guifg=#00E520 guibg=#E2E2E2 gui=bold
hi GitGutterChange            guifg=#F0B000 guibg=#E2E2E2 gui=bold
hi GitGutterDelete            guifg=#F00000 guibg=#E2E2E2 gui=bold
hi GitGutterChangeDelete      guifg=#F00000 guibg=#E2E2E2 gui=bold

" multi-cursor
hi multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
hi link multiple_cursors_visual Visual

" tagbar
" The header of generic 'kinds' like 'functions' and 'variables'.
hi TagbarKind                  guifg=#000000 gui=bold
" The 'kind' headers in square brackets inside of scopes.
hi TagbarNestedKind            guifg=#009614
" Tags that define a scope like classes, structs etc.
hi link TagbarScope Type
hi link TagbarType  Structure
" function signatures
hi TagbarSignature              guifg=#509030
" The asterisk (*) that signifies a pseudo-tag.
" hi TagbarPseudoID
hi TagbarFoldIcon               guifg=#000000 gui=bold
" The colour that is used for automatically highlighting the current tag.
" hi TagbarHighlight
hi TagbarVisibilityPublic       guifg=#00E520
hi TagbarVisibilityProtected    guifg=#F0B000
hi TagbarVisibilityPrivate      guifg=#F00000

" NERD tree
" hi NERDTreeHelpCommand
" hi NERDTreeHelpTitle
" hi NERDTreeHelpKey
" hi NERDTreeHelp
" hi NERDTreeToggleOff
" hi NERDTreeToggleOn
" hi NERDTreeDir

" find & replace
hi FNRFind          guifg=#000000 guibg=#B6F22E gui=NONE
hi FNRReplace       guifg=#000000 guibg=#FDB01F gui=NONE
hi FNRIndicatorOff  guifg=#F03010 guibg=NONE    gui=NONE
hi FNRIndicatorOn   guifg=#B6F22E guibg=NONE    gui=bold
hi FNRActiveMode    guifg=#B6F22E guibg=#46620E gui=bold
hi FNRActiveFind    guifg=#B6F22E guibg=#46620E gui=bold
hi FNRActiveReplace guifg=#FDB01F guibg=#76520E gui=bold

" CtrlP
hi CtrlPMatch       guifg=#3000F0

"--------------------------------------------------------------------
" syntax higlighting 
"--------------------------------------------------------------------
" built-in
hi Comment         guifg=#A59040
hi Keyword         guifg=#0030F0               gui=bold
hi Statement       guifg=#0030F0               gui=bold
hi Conditional     guifg=#0030F0               gui=bold
hi Repeat          guifg=#0030F0               gui=bold
hi Exception       guifg=#0030F0               gui=bold
hi Operator        guifg=#000000
hi Function        guifg=#000000               gui=bold
hi Identifier      guifg=#800090
hi Label           guifg=#A0D000

hi Constant        guifg=#0030F0               gui=bold
hi Boolean         guifg=#0030F0               gui=bold,italic
hi Character       guifg=#C82000
hi SpecialChar     guifg=#C82000               gui=bold
hi String          guifg=#C82000
hi Number          guifg=#D00030
hi Float           guifg=#D00030

hi Structure       guifg=#0030F0               gui=bold
hi StorageClass    guifg=#0030F0               gui=bold
hi Type            guifg=#007000               gui=bold
hi Typedef         guifg=#007000               gui=bold

hi PreProc         guifg=#A020A0               gui=bold
hi PreCondit       guifg=#A020A0               gui=bold
hi Include         guifg=#A020A0               gui=bold
hi Define          guifg=#A020A0               gui=bold
hi Macro           guifg=#A02080               
hi link cInluded Include

" easytags
hi      cMember       guifg=#9500D5    
hi      cMemberTag    guifg=#9000D5   
hi link cTypeTag      Type
hi link cEnumTag      Type
hi link cPreProcTag   PreProc
hi link cFunctionTag  Function 

" clighter8
hi      clighter8Occurrences           guifg=NONE     guibg=#FFFF80
hi      clighter8TemplateTypeParameter guifg=#CB6C00                 gui=italic
hi      clighter8ParmDecl              guifg=#007000
hi      clighter8FieldDecl             guifg=#9000D5
hi      clighter8EnumConstantDecl      guifg=#9000D5                 gui=italic
hi      clighter8Namespace             guifg=#6E7D82                 gui=italic
hi      clighter8NamespaceRef          guifg=#6E7D82                 gui=italic
hi link clighter8Prepro                PreProc
hi link clighter8InclusionDirective    cIncluded
hi link clighter8MacroInstantiation    Constant
hi link clighter8Decl                  Identifier
hi link clighter8VarDecl               Identifier
hi link clighter8FunctionDecl          Function
hi link clighter8StructDecl            Type
hi link clighter8UnionDecl             Type
hi link clighter8ClassDecl             Type
hi link clighter8EnumDecl              Type
hi link clighter8TypeRef               Type
hi link clighter8Ref                   Type
hi link clighter8TemplateRef           Type
hi link clighter8DeclRefExprEnum       clighter8EnumConstantDecl
hi link clighter8DeclRefExprCall       Type
hi link clighter8MemberRefExprCall     Type
hi link clighter8MemberRefExprVar      clighter8FieldDecl

" xml
hi xmlAttrib    guifg=#007000
" hi xmlNamespace guifg=#  guibg=#  gui=# 
" hi xmlString    guifg=#  guibg=#  gui=# 
" hi xmlRegion    guifg=#  guibg=#  gui=# 
" hi xmlEntity    guifg=#  guibg=#  gui=# 
" hi xmlCdata     guifg=#  guibg=#  gui=# 
hi link xmlTag Keyword
hi link xmlTagName Keyword  
hi link xmlEndTag xmlTag

" html
hi link htmlTag xmlTag
hi link htmlEndTag xmlEndTag
hi link htmlArg xmlAttrib
" hi link htmlSpecialChar xmlEntity

" json
hi link jsonKeyword Normal
hi link jsonPadding Operator
hi link jsonString  String
hi link jsonTest    Label
hi link jsonEscape  SpecialChar
hi link jsonNumber  Number
hi link jsonBraces  Include
hi link jsonNull    Keyword
hi link jsonBoolean Boolean
hi link jsonNoise   Normal
hi link jsonQuote   String

" Mathematica (mma)
hi      mmaPattern      guifg=#007000
hi      mmaPatternName  guifg=#007000
hi      mmaOperator     guifg=#9500D5  gui=bold
hi link mmaComment      Comment
hi link mmaSymbol       Normal
hi link mmaSystemSymbol Keyword
hi link mmaString       String
hi link mmaSpecial      Normal
hi link mmaNumber       Number
hi link mmaError        Error
hi link mmaBracket      Normal
hi link mmaTodo         Todo
hi link mmaMessage      Type
hi link mmaSlot         Include


" --------------------------------------------------------------------
" {{{ terminal colors
" --------------------------------------------------------------------
if &t_Co > 255
    hi Cursor          ctermfg=232  ctermbg=45  cterm=NONE
    hi Visual          ctermfg=NONE ctermbg=187   cterm=NONE
    hi CursorLine      ctermfg=NONE ctermbg=254  cterm=NONE
    hi CursorColumn    ctermfg=NONE ctermbg=254  cterm=NONE
    hi ColorColumn     ctermfg=NONE ctermbg=254  cterm=NONE
    hi LineNr          ctermfg=246  ctermbg=253  cterm=NONE
    hi CursorLineNr    ctermfg=0    ctermbg=254  cterm=bold
    hi VertSplit       ctermfg=247  ctermbg=247  cterm=NONE

    hi StatusLine      ctermfg=231  ctermbg=241  cterm=bold
    hi StatusLineNC    ctermfg=231  ctermbg=241  cterm=NONE
    hi Pmenu           ctermfg=243  ctermbg=253  cterm=NONE
    hi PmenuSel        ctermfg=232  ctermbg=250   cterm=NONE
    hi PmenuSbar       ctermfg=243  ctermbg=250

    hi MatchParen      ctermfg=0    ctermbg=215  cterm=NONE
    hi IncSearch       ctermfg=0  ctermbg=153  cterm=NONE
    hi Search          ctermfg=NONE ctermbg=NONE cterm=underline

    hi Directory       ctermfg=28  ctermbg=NONE cterm=bold
    hi Folded          ctermfg=30  ctermbg=152  cterm=NONE

    hi Normal          ctermfg=0  ctermbg=15  cterm=NONE
    hi Comment         ctermfg=100  ctermbg=NONE cterm=NONE
    hi Boolean         ctermfg=22  ctermbg=NONE cterm=NONE
    hi Float           ctermfg=160  ctermbg=NONE cterm=NONE
    hi Character       ctermfg=94  ctermbg=NONE cterm=NONE
    hi SpecialChar     ctermfg=130  ctermbg=NONE cterm=NONE
    hi SpecialKey      ctermfg=129  ctermbg=NONE cterm=NONE
    hi String          ctermfg=160  ctermbg=NONE cterm=NONE
    hi Number          ctermfg=22  ctermbg=NONE cterm=NONE
    hi Conceal         ctermfg=253  ctermbg=255  cterm=NONE

    hi Type            ctermfg=4   ctermbg=NONE cterm=NONE
    hi Typedef         ctermfg=4   ctermbg=NONE cterm=NONE
    hi StorageClass    ctermfg=4   ctermbg=NONE cterm=bold
    hi Structure       ctermfg=4   ctermbg=NONE cterm=bold

    hi Conditional     ctermfg=91  ctermbg=NONE cterm=bold
    hi Keyword         ctermfg=91  ctermbg=NONE cterm=bold
    hi Exception       ctermfg=91  ctermbg=NONE cterm=bold
    hi Special         ctermfg=91  ctermbg=NONE cterm=bold
    hi Constant        ctermfg=91  ctermbg=NONE cterm=bold
    hi Repeat          ctermfg=91  ctermbg=NONE cterm=bold
    hi Statement       ctermfg=91  ctermbg=NONE cterm=bold
    hi Tag             ctermfg=91  ctermbg=NONE cterm=bold
    hi Function        ctermfg=231  ctermbg=NONE cterm=bold
    hi Identifier      ctermfg=148  ctermbg=NONE cterm=NONE
    hi Label           ctermfg=186  ctermbg=NONE cterm=NONE
    hi Operator        ctermfg=231  ctermbg=NONE cterm=NONE

    hi Define          ctermfg=126  ctermbg=NONE cterm=NONE
    hi PreProc         ctermfg=126  ctermbg=NONE cterm=bold
    hi PreCondit       ctermfg=126  ctermbg=NONE cterm=bold
    hi Macro           ctermfg=89   ctermbg=NONE cterm=NONE

    hi NonText         ctermfg=242 ctermbg=NONE cterm=NONE
    hi SpecialKey      ctermfg=242 ctermbg=NONE cterm=NONE
    hi ErrorMsg        ctermfg=231  ctermbg=197  cterm=NONE
    hi WarningMsg      ctermfg=231  ctermbg=197  cterm=NONE
    hi Special         ctermfg=231  ctermbg=NONE cterm=NONE
    hi Tag             ctermfg=161  ctermbg=NONE cterm=NONE
    hi Title           ctermfg=232  ctermbg=NONE cterm=bold
    hi Underlined      ctermfg=NONE ctermbg=NONE cterm=underline
    hi Todo            ctermfg=95   ctermbg=NONE cterm=inverse,bold

    hi DiffAdd         ctermfg=232  ctermbg=114   cterm=NONE
    hi DiffDelete      ctermfg=88   ctermbg=NONE cterm=NONE
    hi DiffChange      ctermfg=NONE ctermbg=NONE cterm=NONE
    hi DiffText        ctermfg=232  ctermbg=195   cterm=NONE

    hi SignColumn      ctermfg=NONE ctermbg=251  cterm=NONE
    hi ShowMarksHLl    ctermfg=28  ctermbg=251  cterm=NONE
    hi ShowMarksHLu    ctermfg=28  ctermbg=251  cterm=bold    
    hi ShowMarksHLo    ctermfg=25   ctermbg=251  cterm=NONE
    hi ShowMarksHLm    ctermfg=94  ctermbg=251  cterm=bold
endif
" }}}

" indent line
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#C0C0C0'

if has("win32") || has("win16") || has("win64")
    let &colorcolumn=join(range(81,999),",")
endif

" Must be at the end, because of ctermbg=234 bug.
set background=light

