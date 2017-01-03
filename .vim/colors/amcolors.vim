" vim:fdm=marker sw=2 sts=2 ts=2 expandtab

hi clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="amcolors"

if &background=="dark"

"-----------------------------------------------------------------------------
" {{{ dark theme
"-----------------------------------------------------------------------------
    hi Normal          guifg=#F8F8F2 guibg=#3C3D34
    hi VisualNOS                     guibg=#646450
    hi Visual                        guibg=#646450
    hi Cursor          guifg=#000000 guibg=#80E0FB
    hi iCursor         guifg=#000000 guibg=#80E0FB
    hi LineNr          guifg=#858575 guibg=#414237
    hi CursorColumn                  guibg=#4B4D40
    hi CursorLine                    guibg=#4B4D40
    hi CursorLineNr    guifg=#FEFEFA guibg=#4B4D40 gui=none
    hi ColorColumn                   guibg=#414237
    hi SignColumn      guifg=#F8F8F2 guibg=#414237
    hi FoldColumn      guifg=#858575 guibg=#414237
    hi Folded          guifg=#858575 guibg=#293025

    hi TabLineFill     guifg=#202015 guibg=#202015
    hi TabLine         guibg=#202015 guifg=#808080 gui=none
    hi StatusLine      guifg=#444444 guibg=fg
    hi WildMenu        guifg=#202020 guibg=#dfff00 
    hi StatusLineNC    guifg=NONE    guibg=NONE
    hi VertSplit       guifg=#808080 guibg=NONE    gui=bold

    hi Ignore          guifg=#808080 guibg=bg
    hi Conceal         guifg=#FFFFFF
    hi NonText         guifg=#585750               gui=NONE
    hi SpecialKey      guifg=#585750
    hi SpecialComment  guifg=#7E8E91               gui=bold
    hi Special         guifg=#B487E1 guibg=bg      gui=bold
    hi Delimiter       guifg=#8F8F8F

    hi DiffAdd                       guibg=#155000
    hi DiffChange                    guibg=#654500
    hi DiffDelete      guifg=#E04040 guibg=#653530
    hi DiffText                      guibg=#4C4745 gui=italic,bold

    hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
    hi MatchError      guifg=#FFFFFF guibg=#F02000

    hi Tag             guifg=#B487E1               gui=italic
    hi Title           guifg=#FF7020               gui=bold
    hi Todo            guifg=#A09B6B guibg=bg      gui=bold

    hi Directory       guifg=#A6E22E               gui=bold

    hi Error           guifg=#ffffff guibg=#A52020
    hi ErrorMsg        guifg=#ffffff guibg=#A52020 
    hi WarningMsg      guifg=#FFF5A5 guibg=#756020
    hi ModeMsg         guifg=#E6DB74
    hi MoreMsg         guifg=#E6DB74
    hi Question        guifg=#66D9EF

    " complete menu
    hi Pmenu           guifg=#d5d5d4 guibg=#707065
    hi PmenuSel                      guibg=#505045
    hi PmenuSbar                     guibg=#404035
    hi PmenuThumb      guifg=#66D9EF

    hi Search          guifg=#F8F8F2 guibg=#68539F
    hi IncSearch       guifg=#E6DC85 guibg=#000000

    " spell checking
    if has("spell")
        hi SpellBad    guisp=#F05000               gui=undercurl  
        hi SpellCap    guisp=#6060F0               gui=undercurl  
        hi SpellLocal  guisp=#70F0F0               gui=undercurl  
        hi SpellRare   guisp=#F0C000               gui=undercurl  
    endif

    "--------------------------------------------------------------------
    " plugins
    "--------------------------------------------------------------------
    hi Debug           guifg=#BCA3A3               gui=bold
    hi Underlined      guifg=#808080               gui=underline
    hi CleverF         guifg=#FF00FF               gui=bold
    hi Flashy          guibg=#686865    ctermbg=60

    " indent line plugin
    let g:indentLine_color_term = 239
    let g:indentLine_color_gui = '#525048'

    " braceless plugin indent guide
    hi BracelessIndent guibg=#4C4D44 ctermbg=239

    " signify
    " highlight all the lowercase marks
    hi ShowMarksHLl    guifg=#B6F22E guibg=#414237 gui=NONE
    " highlight all the uppercase marks
    hi ShowMarksHLu    guifg=#B6F22E guibg=#414237 gui=bold    
    " highlight all other marks
    hi ShowMarksHLo    guifg=#22afff guibg=#414237 gui=NONE
    " when multiple marks are on the same line
    hi ShowMarksHLm    guifg=#EAE530 guibg=#414237 gui=bold

    " Syntastic
    hi SyntasticErrorSign         guifg=#F03010 guibg=#414237 gui=bold
    hi SyntasticWarningSign       guifg=#EAE530 guibg=#414237 gui=bold
    hi SyntasticStyleErrorSign    guifg=#D03000 guibg=#414237 gui=bold
    hi SyntasticStyleWarningSign  guifg=#DAD520 guibg=#414237 gui=bold

    " GitGutter
    hi GitGutterAdd               guifg=#B6F22E guibg=#414237 gui=bold
    hi GitGutterChange            guifg=#EAE530 guibg=#414237 gui=bold
    hi GitGutterDelete            guifg=#F03010 guibg=#414237 gui=bold
    hi GitGutterChangeDelete      guifg=#F03010 guibg=#414237 gui=bold

    " multi-cursor
    hi link multiple_cursors_visual Visual
    hi multiple_cursors_cursor term=reverse cterm=reverse gui=reverse

    " tagbar
    " The header of generic 'kinds' like 'functions' and 'variables'.
    hi TagbarKind                  guifg=#ffffff gui=bold
    " The 'kind' headers in square brackets inside of scopes.
    hi TagbarNestedKind            guifg=#50dc82
    " Tags that define a scope like classes, structs etc.
    hi link TagbarScope Type
    hi link TagbarType  Structure
    " function signatures
    hi TagbarSignature              guifg=#A0C070
    " The asterisk (*) that signifies a pseudo-tag.
    " hi TagbarPseudoID
    hi TagbarFoldIcon               guifg=#ffffff gui=bold
    " The colour that is used for automatically highlighting the current tag.
    " hi TagbarHighlight
    hi TagbarVisibilityPublic       guifg=#209020
    hi TagbarVisibilityProtected    guifg=#C5A000
    hi TagbarVisibilityPrivate      guifg=#C04040

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
    hi FNRIndicatorOff  guifg=#9585A5 guibg=NONE    gui=NONE
    hi FNRIndicatorOn   guifg=#D8C8FF guibg=NONE    gui=bold
    hi FNRActiveMode    guifg=#B0A0FF guibg=NONE    gui=bold
    hi FNRActiveFind    guifg=#B6F22E guibg=NONE    gui=bold
    hi FNRActiveReplace guifg=#FDB01F guibg=NONE    gui=bold
    " hi FNRCursor 

    " CtrlP
    hi CtrlPMatch       guifg=#B5A5FF
    " hi CtrlPMatch       guifg=#B0E000
    " hi CtrlPMatch       guifg=NONE guibg=#875FD7

    " startify start screen
    hi StartifySection  guifg=#ffffff guibg=NONE    gui=bold
    hi StartifyHeader   guifg=#bbb0a0 guibg=NONE    
    hi StartifyFooter   guifg=#bbb0a0 guibg=NONE    
    hi StartifyBracket  guifg=#B04040 guibg=NONE    
    hi StartifyNumber   guifg=#FF7038 guibg=NONE    
    hi StartifyFile     guifg=#FFF064 guibg=NONE    
    hi StartifyPath     guifg=#A28262 guibg=NONE    
    hi StartifySlash    guifg=#757055 guibg=NONE    
    hi StartifySpecial  guifg=#FEA020 guibg=NONE    gui=bold
    " hi StartifySelect   guifg=#fff2c0 guibg=#fff060

    "--------------------------------------------------------------------
    " syntax higlighting 
    "--------------------------------------------------------------------
    " built-in
    hi Comment         guifg=#837E69
    hi Keyword         guifg=#B487E1               gui=bold
    hi Statement       guifg=#B487E1               gui=bold
    hi Conditional     guifg=#B487E1               gui=bold
    hi Repeat          guifg=#B487E1               gui=bold
    hi Exception       guifg=#B487E1               gui=bold
    hi Operator        guifg=#F8F8F2
    hi Function        guifg=#F8F8F2               gui=bold
    hi Identifier      guifg=#D2F0CA
    hi Label           guifg=#FF97CB               gui=none

    hi Constant        guifg=#B487E1               gui=bold
    hi Boolean         guifg=#B487E1               gui=bold,italic
    hi Character       guifg=#FFF064
    hi SpecialChar     guifg=#ffd040               gui=bold
    hi String          guifg=#FFF064
    hi Number          guifg=#FFA078
    hi Float           guifg=#FFA078

    hi Structure       guifg=#B487E1               gui=bold
    hi StorageClass    guifg=#B487E1               gui=bold
    hi Type            guifg=#73CDE1               gui=none
    hi Typedef         guifg=#73CDE1

    hi PreProc         guifg=#FA508C               gui=bold
    hi PreCondit       guifg=#FA508C               gui=bold
    hi Include         guifg=#FA508C               gui=bold
    hi Define          guifg=#FA508C               gui=bold
    hi Macro           guifg=#F286DD               
    hi link cInluded Include

    " easytags
    hi      cMember       guifg=#50dc82
    hi      cMemberTag    guifg=#50dc82 
    hi link cTypeTag      Type
    hi link cEnumTag      Type
    hi link cPreProcTag   PreProc
    hi link cFunctionTag  Function 

    " clighter
    hi      clighter8Occurrences           guifg=NONE     guibg=#407030
    hi      clighter8TemplateTypeParameter guifg=#FFAA46  gui=italic
    hi      clighter8ParmDecl              guifg=#A6E22E
    hi      clighter8FieldDecl             guifg=#50dc82
    hi      clighter8EnumConstantDecl      guifg=#50dc82  gui=italic
    hi      clighter8Namespace             guifg=#6E7D82  gui=italic
    hi      clighter8NamespaceRef          guifg=#6E7D82  gui=italic
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
    hi link xmlTag Keyword
    hi link xmlTagName Keyword  
    hi link xmlEndTag xmlTag
    hi xmlAttrib    guifg=#A6E22E
    " hi xmlNamespace guifg=#  guibg=#  gui=# 
    " hi xmlString    guifg=#  guibg=#  gui=# 
    " hi xmlRegion    guifg=#  guibg=#  gui=# 
    " hi xmlEntity    guifg=#  guibg=#  gui=# 
    " hi xmlCdata     guifg=#  guibg=#  gui=# 

    " html
    hi link htmlTag xmlTag
    hi link htmlEndTag xmlEndTag
    hi link htmlArg xmlAttrib
    hi link htmlSpecialChar xmlEntity

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
    hi      mmaPattern      guifg=#A6E22E
    hi      mmaPatternName  guifg=#A6E22E
    hi      mmaOperator     guifg=#73CDE1  gui=bold
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
    " {{{ dark terminal colors
    " --------------------------------------------------------------------
    if &t_Co > 255
        hi Cursor          ctermfg=87  ctermbg=87   cterm=NONE
        hi Visual          ctermfg=NONE ctermbg=59   cterm=NONE
        hi CursorLine      ctermfg=NONE ctermbg=239  cterm=NONE
        hi CursorColumn    ctermfg=NONE ctermbg=239  cterm=NONE
        hi ColorColumn     ctermfg=NONE ctermbg=239  cterm=NONE
        hi LineNr          ctermfg=102  ctermbg=238  cterm=NONE
        hi CursorLineNr    ctermfg=255  ctermbg=239  cterm=NONE
        hi VertSplit       ctermfg=241  ctermbg=241  cterm=NONE
        hi SignColumn      ctermfg=NONE ctermbg=238  cterm=NONE
        hi FoldColumn      ctermfg=102  ctermbg=238  cterm=NONE
        hi Folded          ctermfg=242  ctermbg=235  cterm=NONE
        hi StatusLine      ctermfg=231  ctermbg=241  cterm=bold
        hi StatusLineNC    ctermfg=231  ctermbg=241  cterm=NONE
        hi Pmenu           ctermfg=253  ctermbg=243  cterm=NONE
        hi PmenuSel        ctermfg=255  ctermbg=240   cterm=NONE
        hi PmenuSbar                 ctermbg=236
        hi MatchParen      ctermfg=0    ctermbg=208  cterm=NONE
        hi IncSearch       ctermfg=235  ctermbg=228  cterm=NONE
        hi Search          ctermfg=NONE ctermbg=61  cterm=NONE
        hi Directory       ctermfg=155  ctermbg=NONE cterm=bold
        hi Conceal         ctermfg=255  ctermbg=237  cterm=NONE
        hi Type            ctermfg=81   ctermbg=NONE cterm=NONE
        hi Typedef         ctermfg=81   ctermbg=NONE cterm=NONE
        hi StorageClass    ctermfg=81   ctermbg=NONE cterm=bold
        hi Structure       ctermfg=81   ctermbg=NONE cterm=bold
        hi Normal          ctermfg=255  ctermbg=237  cterm=NONE
        hi Comment         ctermfg=101  ctermbg=NONE cterm=NONE
        hi Boolean         ctermfg=111  ctermbg=NONE cterm=NONE
        hi Character       ctermfg=226  ctermbg=NONE cterm=NONE
        hi SpecialChar     ctermfg=220  ctermbg=NONE cterm=NONE
        hi SpecialKey      ctermfg=153  ctermbg=NONE cterm=NONE
        hi String          ctermfg=226  ctermbg=NONE cterm=NONE
        hi Float           ctermfg=209  ctermbg=NONE cterm=NONE
        hi Number          ctermfg=209  ctermbg=NONE cterm=NONE
        hi Conditional     ctermfg=147  ctermbg=NONE cterm=bold
        hi Keyword         ctermfg=147  ctermbg=NONE cterm=bold
        hi Exception       ctermfg=147  ctermbg=NONE cterm=bold
        hi Special         ctermfg=147  ctermbg=NONE cterm=bold
        hi Constant        ctermfg=147  ctermbg=NONE cterm=bold
        hi Repeat          ctermfg=147  ctermbg=NONE cterm=bold
        hi Statement       ctermfg=147  ctermbg=NONE cterm=bold
        hi Tag             ctermfg=147  ctermbg=NONE cterm=bold
        hi Function        ctermfg=231  ctermbg=NONE cterm=bold
        hi Identifier      ctermfg=150  ctermbg=NONE cterm=NONE
        hi Label           ctermfg=186  ctermbg=NONE cterm=NONE
        hi Operator        ctermfg=231  ctermbg=NONE cterm=NONE
        hi Define          ctermfg=205  ctermbg=NONE cterm=NONE
        hi Include         ctermfg=205  ctermbg=NONE cterm=bold
        hi PreProc         ctermfg=205  ctermbg=NONE cterm=bold
        hi PreCondit       ctermfg=205  ctermbg=NONE cterm=bold
        hi Macro           ctermfg=218  ctermbg=NONE cterm=NONE
        hi NonText         ctermfg=240 ctermbg=NONE cterm=NONE
        hi SpecialKey      ctermfg=240 ctermbg=NONE cterm=NONE
        hi ErrorMsg        ctermfg=231  ctermbg=197  cterm=NONE
        hi WarningMsg      ctermfg=231  ctermbg=197  cterm=NONE
        hi Special         ctermfg=231  ctermbg=NONE cterm=NONE
        hi Tag             ctermfg=197  ctermbg=NONE cterm=NONE
        hi Title           ctermfg=208  ctermbg=NONE cterm=bold
        hi Underlined      ctermfg=NONE ctermbg=NONE cterm=underline
        hi Todo            ctermfg=95   ctermbg=NONE cterm=inverse,bold
        hi DiffAdd         ctermfg=231  ctermbg=64   cterm=NONE
        hi DiffDelete      ctermfg=88   ctermbg=NONE cterm=NONE
        hi DiffChange      ctermfg=NONE ctermbg=NONE cterm=NONE
        hi DiffText        ctermfg=231  ctermbg=24   cterm=NONE
        hi ShowMarksHLl    ctermfg=154  ctermbg=238  cterm=NONE
        hi ShowMarksHLu    ctermfg=154  ctermbg=238  cterm=bold    
        hi ShowMarksHLo    ctermfg=33   ctermbg=238  cterm=NONE
        hi ShowMarksHLm    ctermfg=226  ctermbg=238  cterm=bold
        hi FNRFind          ctermfg=0 ctermbg=154 cterm=NONE
        hi FNRReplace       ctermfg=0 ctermbg=214 cterm=NONE
        hi FNRIndicatorOff  ctermfg=60 ctermbg=NONE cterm=NONE
        hi FNRIndicatorOn   ctermfg=153 ctermbg=NONE cterm=bold
        hi FNRActiveMode    ctermfg=153 ctermbg=NONE cterm=bold
        hi FNRActiveFind    ctermfg=154 ctermbg=NONE cterm=bold
        hi FNRActiveReplace ctermfg=214 ctermbg=NONE cterm=bold
        hi CtrlPMatch       ctermfg=120
    endif
    " }}}

    if has("win32") || has("win16") || has("win64")
        let &colorcolumn=join(range(81,999),",")
    endif

    " Must be at the end, because of ctermbg=234 bug.
    set background=dark
" }}}

else 

"-----------------------------------------------------------------------------
" {{{ light theme 
"-----------------------------------------------------------------------------
    hi Normal          guifg=#555555 guibg=#E7E7E3
    hi VisualNOS                     guibg=#D0D0B6
    hi Visual                        guibg=#D0D0B6
    hi Cursor          guifg=#000000 guibg=#20BBFC
    hi iCursor         guifg=#000000 guibg=#20BBFC
    hi LineNr          guifg=#b0b0a6 guibg=#deded9 
    hi SignColumn      guifg=#555555 guibg=#deded9
    hi CursorLine                    guibg=#dcdcd6
    hi CursorColumn                  guibg=#dcdcd6
    hi CursorLineNr    guifg=#000000 guibg=#dcdcd6 gui=none
    hi ColorColumn                   guibg=#e0e0db
    hi FoldColumn      guifg=#87877D guibg=#deded9
    hi Folded          guifg=#87877D guibg=#C8C8BE   

    hi TabLineFill     guifg=#B4B4AA guibg=#B4B4AA
    hi TabLine         guibg=#B4B4AA guifg=#808080 gui=none
    hi StatusLine      guifg=#AFFFFF guibg=#465FFF
    hi WildMenu        guifg=#FFFFFF guibg=#005FFF

    hi StatusLineNC    guifg=NONE    guibg=NONE
    hi VertSplit       guifg=#808080 guibg=NONE    gui=bold

    hi Delimiter       guifg=#8F8F8F

    hi DiffAdd                       guibg=#c9dca0 
    hi DiffChange                    guibg=#e9efb0
    hi DiffDelete      guifg=#802020 guibg=#f0c8be
    hi DiffText                      guibg=#d0d0d0 gui=italic,bold

    hi MatchParen      guifg=#c8323f guibg=#f0c8be gui=bold
    hi MatchError      guifg=#FFFFFF guibg=#c000c0

    hi NonText         guifg=#C0C0C0               gui=NONE
    hi SpecialKey      guifg=#C0C0C0
    hi SpecialComment  guifg=#C0C0C0               gui=bold
    hi SpecialKey      guifg=#C0C0C0              

    hi Tag             guifg=#8c32b4               gui=italic
    hi Title           guifg=#E04000               gui=bold
    hi Todo            guifg=#A09B6B guibg=bg      gui=bold

    hi Directory       guifg=#108010               gui=bold

    hi Ignore          guifg=#87877D guibg=bg
    hi Conceal         guifg=#404040

    hi Error           guifg=#D30000 guibg=#f0c8be
    hi ErrorMsg        guifg=#D30000 guibg=#f0c8be 
    hi WarningMsg      guifg=#D0C050 guibg=#f0e580 
    hi ModeMsg         guifg=#605000
    hi MoreMsg         guifg=#605000

    " complete menu
    hi Pmenu           guifg=#d5d5d4 guibg=#707065
    hi PmenuSel        guifg=#505050 guibg=#C8C8BE
    hi PmenuSbar                     guibg=#404035
    hi PmenuThumb      guifg=#006EB4

    hi Question        guifg=#006EB4

    hi Search          guifg=NONE    guibg=#EBE18C
    hi IncSearch       guifg=#D0B0E0 guibg=#000000

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
    hi Debug       guifg=#BCA3A3                            gui=bold
    hi Underlined  guifg=#808080                            gui=underline
    hi CleverF     guifg=NONE     guibg=#afff87
    hi Flashy      guibg=#F0F0C0                ctermbg=228

    " indent line plugin
    let g:indentLine_color_term = 253
    let g:indentLine_color_gui = '#D0D0CE'

    " braceless plugin indent guide
    hi BracelessIndent guibg=#dcdcd6 ctermbg=253

    " highlight all the lowercase marks
    hi ShowMarksHLl    guifg=#009619 guibg=#D0E6D0 gui=NONE
    " highlight all the uppercase marks
    hi ShowMarksHLu    guifg=#009619 guibg=#D0E6D0 gui=bold    
    " highlight all other marks
    hi ShowMarksHLo    guifg=#006EB4 guibg=#deded9 gui=NONE
    " when multiple marks are on the same line
    hi ShowMarksHLm    guifg=#C88200 guibg=#E6E0A0 gui=bold

    " Syntastic
    hi SyntasticErrorSign         guifg=#D02000 guibg=#deded9 gui=bold 
    hi SyntasticWarningSign       guifg=#DAD520 guibg=#deded9 gui=bold
    hi SyntasticStyleErrorSign    guifg=#D05050 guibg=#deded9 gui=bold
    hi SyntasticStyleWarningSign  guifg=#DAD560 guibg=#deded9 gui=bold

    " GitGutter
    hi GitGutterAdd               guifg=#009619 guibg=#deded9 gui=bold
    hi GitGutterChange            guifg=#C88200 guibg=#deded9 gui=bold
    hi GitGutterDelete            guifg=#d30000 guibg=#deded9 gui=bold
    hi GitGutterChangeDelete      guifg=#d30000 guibg=#deded9 gui=bold

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
    hi TagbarVisibilityPublic       guifg=#80D080
    hi TagbarVisibilityProtected    guifg=#D0C080
    hi TagbarVisibilityPrivate      guifg=#F0A0A0

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
    hi FNRActiveMode    guifg=#B6F22E guibg=NONE    gui=bold
    hi FNRActiveFind    guifg=#B6F22E guibg=NONE    gui=bold
    hi FNRActiveReplace guifg=#FDB01F guibg=NONE    gui=bold
    " hi FNRCursor 

    " CtrlP
    hi CtrlPMatch       guifg=NONE guibg=#afff87

    " startify start screen
    hi StartifySection  guifg=#000000 guibg=NONE    gui=bold
    hi StartifyHeader   guifg=#808080 guibg=NONE    
    hi StartifyFooter   guifg=#808080 guibg=NONE    
    hi StartifyBracket  guifg=#E0C0C5 guibg=NONE    
    hi StartifyNumber   guifg=#c02070 guibg=NONE    
    hi StartifyFile     guifg=#2030D0 guibg=NONE    
    hi StartifyPath     guifg=#80A0E0 guibg=NONE    
    hi StartifySlash    guifg=#90C0F0 guibg=NONE    
    hi StartifySpecial  guifg=#d23296 guibg=NONE    gui=bold
    " hi StartifySelect   guifg=#fff2c0 guibg=#fff060

    "--------------------------------------------------------------------
    " syntax higlighting 
    "--------------------------------------------------------------------
    " built-in
    hi Comment         guifg=#A0A090
    hi Keyword         guifg=#8c32b4               gui=bold
    hi Statement       guifg=#8c32b4               gui=bold
    hi Conditional     guifg=#8c32b4               gui=bold
    hi Repeat          guifg=#8c32b4               gui=bold
    hi Exception       guifg=#8c32b4               gui=bold
    hi Operator        guifg=#3c3c3c
    hi Function        guifg=#3c3c3c               gui=bold
    hi Identifier      guifg=#509600
    hi Label           guifg=#f03278               gui=none

    hi Constant        guifg=#8c32b4               gui=bold
    hi Boolean         guifg=#8c32b4               gui=bold,italic
    hi Character       guifg=#c88200
    hi SpecialChar     guifg=#c57000               gui=bold
    hi String          guifg=#c88200
    hi Number          guifg=#d30000
    hi Float           guifg=#d30000

    hi Structure       guifg=#8c32b4               gui=bold
    hi StorageClass    guifg=#8c32b4               gui=bold
    hi Type            guifg=#006eb4               gui=none
    hi Typedef         guifg=#006eb4

    hi PreProc         guifg=#d23296               gui=bold
    hi PreCondit       guifg=#d23296               gui=bold
    hi Include         guifg=#d23296               gui=bold
    hi Define          guifg=#d23296               gui=bold
    hi Macro           guifg=#c02070               
    hi link cInluded Include

    " easytags
    hi      cMember       guifg=#009614
    hi      cMemberTag    guifg=#009614 
    hi link cTypeTag      Type
    hi link cEnumTag      Type
    hi link cPreProcTag   PreProc
    hi link cFunctionTag  Function 

    " clighter
    hi     clighter8Occurrences            guifg=NONE     guibg=#B0F0B0
    hi     clighter8TemplateTypeParameter  guifg=#CB6C00  gui=italic
    hi     clighter8ParmDecl               guifg=#80C000
    hi     clighter8FieldDecl              guifg=#009614
    hi     clighter8EnumConstantDecl       guifg=#009614  gui=italic
    hi     clighter8Namespace              guifg=#6E7D82  gui=italic
    hi     clighter8NamespaceRef           guifg=#6E7D82  gui=italic
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
    hi      xmlAttrib   guifg=#509600
    hi link xmlTag      Keyword
    hi link xmlTagName  Keyword  
    hi link xmlEndTag   xmlTag
    " hi xmlNamespace guifg=#  guibg=#  gui=# 
    " hi xmlString    guifg=#  guibg=#  gui=# 
    " hi xmlRegion    guifg=#  guibg=#  gui=# 
    " hi xmlEntity    guifg=#  guibg=#  gui=# 
    " hi xmlCdata     guifg=#  guibg=#  gui=# 

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
    hi      mmaPattern      guifg=#509600
    hi      mmaPatternName  guifg=#509600
    hi      mmaOperator     guifg=#006eb4  gui=bold
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
    " {{{ light terminal colors
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
        hi FoldColumn      ctermfg=246  ctermbg=253  cterm=NONE
        hi Folded          ctermfg=30  ctermbg=152  cterm=NONE
        hi SignColumn      ctermfg=NONE ctermbg=251  cterm=NONE
        hi StatusLine      ctermfg=231  ctermbg=241  cterm=bold
        hi StatusLineNC    ctermfg=231  ctermbg=241  cterm=NONE
        hi Pmenu           ctermfg=243  ctermbg=253  cterm=NONE
        hi PmenuSel        ctermfg=232  ctermbg=250   cterm=NONE
        hi PmenuSbar       ctermfg=243  ctermbg=250
        hi MatchParen      ctermfg=0    ctermbg=215  cterm=NONE
        hi IncSearch       ctermfg=0  ctermbg=153  cterm=NONE
        hi Search          ctermfg=NONE ctermbg=NONE cterm=underline
        hi Directory       ctermfg=28  ctermbg=NONE cterm=bold
        hi Normal          ctermfg=235  ctermbg=255  cterm=NONE
        hi Comment         ctermfg=101  ctermbg=NONE cterm=NONE
        hi Boolean         ctermfg=93  ctermbg=NONE cterm=NONE
        hi Float           ctermfg=160  ctermbg=NONE cterm=NONE
        hi Character       ctermfg=94  ctermbg=NONE cterm=NONE
        hi SpecialChar     ctermfg=130  ctermbg=NONE cterm=NONE
        hi SpecialKey      ctermfg=129  ctermbg=NONE cterm=NONE
        hi String          ctermfg=94  ctermbg=NONE cterm=NONE
        hi Number          ctermfg=160  ctermbg=NONE cterm=NONE
        hi Conceal         ctermfg=253  ctermbg=255  cterm=NONE
        hi Type            ctermfg=27   ctermbg=NONE cterm=NONE
        hi Typedef         ctermfg=27   ctermbg=NONE cterm=NONE
        hi StorageClass    ctermfg=27   ctermbg=NONE cterm=bold
        hi Structure       ctermfg=27   ctermbg=NONE cterm=bold
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
        hi Title           ctermfg=166  ctermbg=NONE cterm=bold
        hi Underlined      ctermfg=NONE ctermbg=NONE cterm=underline
        hi Todo            ctermfg=95   ctermbg=NONE cterm=inverse,bold
        hi DiffAdd         ctermfg=232  ctermbg=114   cterm=NONE
        hi DiffDelete      ctermfg=88   ctermbg=NONE cterm=NONE
        hi DiffChange      ctermfg=NONE ctermbg=NONE cterm=NONE
        hi DiffText        ctermfg=232  ctermbg=195   cterm=NONE
        hi ShowMarksHLl    ctermfg=28  ctermbg=251  cterm=NONE
        hi ShowMarksHLu    ctermfg=28  ctermbg=251  cterm=bold    
        hi ShowMarksHLo    ctermfg=25   ctermbg=251  cterm=NONE
        hi ShowMarksHLm    ctermfg=94  ctermbg=251  cterm=bold
    endif
    " }}}

    if has("win32") || has("win16") || has("win64")
        let &colorcolumn=join(range(81,999),",")
    endif

    " Must be at the end, because of ctermbg=234 bug.
    set background=light
"}}}
endif
