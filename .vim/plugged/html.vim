syntax file
" Language:	HTML
" " Maintainer:	Claudio Fleiner <claudio@fleiner.com>
 " URL:		http://www.fleiner.com/vim/syntax/html.vim
 " Last Change:  2006 Jun 19

 " Please check :help html.vim for some comments and a description of the
 options

 " For version 5.x: Clear all syntax items
 " For version 6.x: Quit when a syntax file was already loaded
 if !exists("main_syntax")
   if version < 600
       syntax clear
         elseif exists("b:current_syntax")
             finish
               endif
                 let main_syntax = 'html'
                 endif

                 " don't use standard HiLink, it will not work with included
                 syntax files
                 if version < 508
                   command! -nargs=+ HtmlHiLink hi link <args>
                   else
                     command! -nargs=+ HtmlHiLink hi def link <args>
                     endif

                     syntax spell toplevel

                     syn case ignore

                     " mark illegal characters
                     syn match htmlError "[<>&]"


                     " tags
                     syn region  htmlString   contained start=+"+ end=+"+
                     contains=htmlSpecialChar,javaScriptExpression,@htmlPreproc
                     syn region  htmlString   contained start=+'+ end=+'+
                     contains=htmlSpecialChar,javaScriptExpression,@htmlPreproc
                     syn match   htmlValue    contained "=[\t ]*[^'" \t>][^
                     \t>]*"hs=s+1
                     contains=javaScriptExpression,@htmlPreproc
                     syn region  htmlEndTag             start=+</+
                     end=+>+ contains=htmlTagN,htmlTagError
                     syn region  htmlTag                start=+<[^/]+
                     end=+>+
                     contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent,htmlCssDefinition,@htmlPreproc,@htmlArgCluster
                     syn match   htmlTagN     contained
                     +<\s*[-a-zA-Z0-9]\++hs=s+1
                     contains=htmlTagName,htmlSpecialTagName,@htmlTagNameCluster
                     syn match   htmlTagN     contained
                     +</\s*[-a-zA-Z0-9]\++hs=s+2
                     contains=htmlTagName,htmlSpecialTagName,@htmlTagNameCluster
                     syn match   htmlTagError contained "[^>]<"ms=s+1


                     " tag names
                     syn keyword htmlTagName contained address applet area a
                     base basefont
                     syn keyword htmlTagName contained big blockquote br
                     caption center
                     syn keyword htmlTagName contained cite code dd d2016-10-07T07:51:46dir div dl dt font
                     syn keyword htmlTagName contained form hr html img
                     syn keyword htmlTagName contained input isindex kbd li
                     link map menu
                     syn keyword htmlTagName contained meta ol option param
                     pre p samp span
                     syn keyword htmlTagName contained select small strike
                     sub sup
                     syn keyword htmlTagName contained table td textarea th
                     tr tt ul var xmp
                     syn match htmlTagName contained
                     "\<\(b\|i\|u\|h[1-6]\|em\|strong\|head\|body\|title\)\>"

                     " new html 4.0 tags
                     syn keyword htmlTagName contained abbr acronym bdo
                     button col label
                     syn keyword htmlTagName contained colgroup del fieldset
                     iframe ins legend
                     syn keyword htmlTagName contained object optgroup q s
                     tbody tfoot thead

                     " legal arg names
                     syn keyword htmlArg contained action
                     syn keyword htmlArg contained align alink alt archive
                     background bgcolor
                     syn keyword htmlArg contained border bordercolor
                     cellpadding
                     syn keyword htmlArg contained cellspacing checked class
                     clear code codebase color
                     syn keyword htmlArg contained cols colspan content
                     coords enctype face
                     syn keyword htmlArg contained gutter height hspace id
                     syn keyword htmlArg contained link lowsrc marginheight
                     syn keyword htmlArg contained marginwidth maxlength
                     method name prompt
                     syn keyword htmlArg contained rel rev rows rowspan
                     scrolling selected shape
                     syn keyword htmlArg contained size src start target text
                     type url
                     syn keyword htmlArg contained usemap ismap valign value
                     vlink vspace width wrap
                     syn match   htmlArg contained
                     "\<\(http-equiv\|href\|title\)="me=e-1

                     " Netscape extensions
                     syn keyword htmlTagName contained frame noframes
                     frameset nobr blink
                     syn keyword htmlTagName contained layer ilayer nolayer
                     spacer
                     syn keyword htmlArg     contained frameborder noresize
                     pagex pagey above below
                     syn keyword htmlArg     contained left top visibility
                     clip id noshade
                     syn match   htmlArg     contained "\<z-index\>"

                     " Microsoft extensions
                     syn keyword htmlTagName contained marquee

                     " html 4.0 arg names
                     syn match   htmlArg contained
                     "\<\(accept-charset\|label\)\>"
                     syn keyword htmlArg contained abbr accept accesskey axis
                     char charoff charset
                     syn keyword htmlArg contained cite classid codetype
                     compact data datetime
                     syn keyword htmlArg contained declare defer dir disabled
                     for frame
                     syn keyword htmlArg contained headers hreflang lang
                     language longdesc
                     syn keyword htmlArg contained multiple nohref nowrap
                     object profile readonly
                     syn keyword htmlArg contained rules scheme scope span
                     standby style
                     syn keyword htmlArg contained summary tabindex valuetype
                     version

                     " special characters
                     syn match htmlSpecialChar "&#\=[0-9A-Za-z]\{1,8};"

                     " Comments (the real ones or the old netscape ones)
                     if exists("html_wrong_comments")
                       syn region htmlComment                start=+<!--+
                       end=+--\s*>+
                       else
                         syn region htmlComment                start=+<!+
                         end=+>+   contains=htmlCommentPart,htmlCommentError
                           syn match  htmlCommentError contained "[^><!]"
                             syn region htmlCommentPart  contained start=+--+
                             end=+--\s*+  contains=@htmlPreProc
                             endif
                             syn region htmlComment
                             start=+<!DOCTYPE+ keepend end=+>+

                             " server-parsed commands
                             syn region htmlPreProc start=+<!--#+ end=+-->+
                             contains=htmlPreStmt,htmlPreError,htmlPreAttr
                             syn match htmlPreStmt contained
                             "<!--#\(config\|echo\|htmlArg contained multiple
                             nohref nowrap object profile readonly
                             syn keyword htmlArg contatcnly
                             syn keyword htmlArg contained rules scheme scope
                             span sAtummary tabindex valuetype version

                             " special characters
                             syn match htmlSpecialChar "&#\=[0-9A-Za-z]\{1
                             cmlSpecialChar "&#\=[0-9A-Za-z]\{1,8};"

                             " Comments (the real ones rowrong_comments")
                               syn region htmlComment
                               start=+<!--+    end=+--\s*>+
                               else
                                 syn region htta end=+--\s*>+
                                 else
                                   syn region htmlComment
                                   start=+<!+ vahtmlCommentError
                                     syn match  htmlCommentError contained
                                     "[^><!]"
                                       syn region htmlCommentPart  contained
                                       sttmt
                                       start=+<!DOCTYPE+ keepend end=+>+

                                       " server-parsed commands
                                       syn region htmlPreProc start=+<!--#+
                                       end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn match icands
                                       syn region htmlPreProc start=+<!--#+
                                       end=+-->+
                                       contains=htmlPreStmt@hlPreStmt
                                       contained
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       syn match htmlSpecialChar
                                       "&#\=[0-9A-Za-z]\{1 cmlSpecialChar
                                       "&#\=[0-9A-Za-z]\{1,8};"

                                       " Comments (the real ones rowrotan
                                       htmlPreProc start=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn match icands
                                       syn region htmlPreProc start=+<!--#+
                                       end=+-->+
                                       contains=htmlPreStmt@hlPreStmt
                                       contained
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       syn match htmlSpecialChar
                                       "&#\=[0-9A-Za-z]\{1 cmlSpecialChar
                                       "&#\=[0-9A-Za-z]\{1,8};"

                                       " Comments (the real ones rowrotan
                                       htmlPreProc start=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       syn match htmlSpecialChasyh icands
                                       syn region htmlPreProc start=+<!--#+
                                       end=+-->+
                                       contains=htmlPreStmt@hlPreStmt
                                       contained
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       syn match htmlSpecialChar
                                       "&#\=[0-9A-Za-z]\{1 cmlSpecialChar
                                       "&#\=[0-9A-Za-z]\{1,8};"

                                       " Comments (the real ones
                                       rowstmt@hlPreStmt contained
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple lUtan htmlPreProc
                                       start=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       syn match htmlSpecialChasyh icands
                                       syn regtmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       syn match htmlSpecialChasyh icands
                                       syn regtmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       syn match htmlSpecialChasyh icands
                                       syn regtmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtumreg\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       syn match htmlSpecialChasyh icands
                                       syn regtmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtum</syn4  span sAtummary
                                       tabindex valuetype version

                                       " special characters
                                       sy>"tmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArgmly
                                       syn4  span sAtumreg\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       syn match htmlSpecialChasyh icands
                                       syn regtmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtum</syn4  span sAtummary
                                       tabindex valuetype version

                                       " s  ry tabindex valuetype version

                                       " special characters
                                       syn match htmlSpecialChasyh icands
                                       syn regtmart=+<!--#+ enmlhasyh icands
                                       syn regtmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPrejay
                                       syn4  span sAtum</syn4  span sAtummary
                                       tabindex valuetype version

                                       " special characters
                                       sy>"tmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(ccrfig\|echo\|htmlArgmly
                                       syn4  span sAtumreg\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAtummary tabindex
                                       valuetype version

                                       " special characters
                                       man match htmlSpecialChasyh icands
                                       syn regtmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       arject profile readonly
                                       syn4  span sAtum</syn4  span sAtummary
                                       tabindex valuetype version

                                       " s  ry tabindex valuetype version

                                       " special characters
                                       syn match htmlSpecialChasyh icands
                                       synmlype version

                                       " special characters
                                       syn match htmlSpecialChasyh icands
                                       syn regtmart=+<!--#+ enmlhasyh icands
                                       syntmegtmart=+<!--#+ enmlhasyh icands
                                       syn regtmart=+<!--#+ end=+-->+
                                       containsva>"tmart=+<!--#+ end=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(ccrfig\|echo\|htmlArgmly
                                       syn4  span sAtumreg\|echo\|htmlArg
                                       contained multiple nohref nowrap asmly
                                       syn4  span sAtumreg\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span sAt};Error,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(config\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       arject profile readonly
                                       syn4  span sAtum</syn4  span sAtummary
                                       tabindex valuetype version

                                       " s  ry tabindex valuetype version

                                       " special characters
                                       syn match htmlSpec enly
                                       syn4  span sAtum</syn4  span sAtummary
                                       tabindex valuetype version

                                       " s  ry tabindex valuetype version

                                       " sht  ry tabindex valuetype version

                                       " special characters
                                       syn match htmlSpecjad=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(ccrfig\|echo\|htmlArgmly
                                       syn4  span sAtumreg\|echo\|htmlArg
                                       contained multiple nohref nowrap asmly
                                       syn4  span sAtumreg\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span
                                       sAt};Error,htmlPreAtttycrfig\|echo\|htmlArgmly
                                       syn4  span sAtumreg\|echo\|htmlArg
                                       contained mulgrumreg\|echo\|htmlArg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span
                                       sAt};Error,htmlPreAttenarject profile
                                       readonly
                                       syn4  span sAtum</syn4  span sAtummary
                                       tabindex valuetype version

                                       " s  ry tabindex valuetype version

                                       " special characters
                                       syn match htmlSpec enly
                                       syn4  span sntluetype version

                                       " s  ry tabindex valuetype version

                                       " special charactertaetype version

                                       " sht  ry tabindex valuetype version

                                       " special characters
                                       syn match htmlSpecjad=+-->+
                                       contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed "<!--#\(ccrfig\|echo\|htm
                                       htmlPreStmt,htmlPreError,htmlPreAttr
                                       syn ma" ed
                                       "<!--#\(ccrfig\|echo\|htmlArgmly
                                       syn4  span sAtumreg\|echo\|htm!ergmly
                                       syn4  span sAtumreg\|echo\|htmlArg
                                       contained multiple nohref nowras rg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span
                                       sAt};Error,htmlPreAtttycrfig\|echo\|htmierg
                                       contained multiple nohref nowrap
                                       object profile readonly
                                       syn4  span
                                       sAt};Error,htmlPreAttenarject profile
                                       readonly
                                       syn4  span sAtum</syn4  span sAtummary
                                       tabindex valuetype version
                                         };Error,htmlPreAttenarject profile
                                         readonly
                                         syn4  span sAtum</syn4  spanif s  ry
                                         tabindex valuetype version

                                         " special characters
                                         syn match htmlSpec enly
                                         syn4  span sntluetype version
                                           ht  ry tabindex valuetype version

                                           " special characters
                                           syn match htmlSpecjad=+-->+
                                           contains=htmlPreStmt,htmlPreError,htmlPreAttr
                                           syn ma" ed
                                           "<!--#\(ccrfig\|echo\|htm
                                           htmlPreStmt,htmlPmlError,htmlPreAttr
                                           syn ma" ed
                                           "<!--#\(ccrfig\|echo\|htmlArgmly
                                           syn4  span
                                           sAtumreg\|echo\|htm!ergmly
                                           syn4  span sAtumreg\|echo\|htmlArg
                                           contained multiple nohref nowras
                                           rg contained
                                           muldeAtumreg\|echo\|htm!ergmly
                                           syn4  span sAtumreg\|echo\|htmlArg
                                           contained m
                                            ple nohref nowrap object profile
                                            readonly
                                            syn4  span
                                            sAt};Error,htmlPreAtttycrfig\|echo\|htmierg
                                            contained multmvaluetype version
                                              };Error,htmlPreAttenarject
                                              profile readonly
                                              syn4  span sAtum</syn4  spanif
                                              s  ry tabindex valuetype
                                              version

                                              " special characters
                                              syn match htmlSpec enly
                                              syn4  span sntluetype version
                                                ht  ry tabindex valuetype
                                                version

                                                " special charactldluetype
                                                version

                                                " special characters
                                                syn match htmlSpec enly
                                                syn4  span sntluetype version
                                                  ht  ry tabindex
                                                  =htmlPreStmt,htmlPreError,htmlPreAttr
                                                  syn ma" ed
                                                  "<!--#\(ccrfig\|echo\|htm
                                                  htmlPreStmt,htmlPmlError,htmlPreAttr
                                                  syn ma" ed
                                                  "<!--#\(ccrfig\|echo\|htmlArgmly
                                                  syn4  span
                                                  sAtumreg\|echo\|hc
                                                  htmlPreStmt,htmlPmlError,htmlPreAttr
                                                  syn ma" ed
                                                  "<!--#\(ccrfig\|echo\|h hs
                                                  rg contained
                                                  muldeAtumreg\|echo\|htm!ergmly
                                                  syn4  span
                                                  sAtumreg\|echo\|htmlArg
                                                  contained m
                                                   ple nohref nowrap object
                                                   profile readonly
                                                   syn4  span
                                                   sAt};Error,htmlPreAtttycrfig\|echo\|he
                                                   ierg contained
                                                   multmvaluetype version
                                                     };Error,htmlPreAttenarject
                                                     profile readonly
                                                     syn4  span sAtum</syn4
                                                     spanif s  ry tabindex
                                                     valuetype version

                                                     " special characters
                                                     syn match htmlf
                                                     if s  ry tabindex
                                                     valuetype version

                                                     " special characters
                                                     syn match htmlSpec enly
                                                     syn4  span sntluetype
                                                     versiohtec enly
                                                     syn4  span sntluetype
                                                     version
                                                       ht  ry tabindex
                                                       valuetype versio    ht
                                                       ry tabindex
                                                       =htmlPreStmt,htmlPreError,htmlPreAttr
                                                       syn ma" ed
                                                       "<!--#\(ccrfig\|echo\|htm
                                                       htmlPreStmt,htmlPmlError,htmlPreAttr
                                                       syn ma" ed
                                                       "<!--#\(ccrfig\|echo\|htmlArgmly
                                                       syn4  sp
                                                       hmlError,htmlPreAttr
                                                       syn ma" ed
                                                       "<!--#\(ccrfig\|echo\|htmlArgmly
                                                       syn4  span
                                                       sAtumreg\|echo\|hc
                                                       htmlPreStmt,htm
                                                       CdeAtumreg\|echo\|htm!ergmly
                                                       syn4  span
                                                       sAtumreg\|echo\|htmlArg
                                                       contained m
                                                        ple nohref nowrap
                                                        object profile
                                                        readonly
                                                        syn4  span
                                                        sAt};Error,htmlPreAtttycrfig\|echo\|he
                                                        ierg contained mr
                                                        tmvaluetype version
                                                          };Error,htmlPreAttenarject
                                                          profile readonly
                                                          syn4  span
                                                          sAtum</syn4  spanif
                                                          s  ry tabindex
                                                          valuetype version

                                                          " special
                                                          characters
                                                          syn match htmlf
                                                          if s  ry tabinde
                                                          Hvaluetype version

                                                          " special
                                                          characters
                                                          syn match htmlSpec
                                                          enly
                                                          syn4  span
                                                          sntluetype
                                                          versiohtec enly
                                                          syn4  span
                                                          sntluetype version
                                                            ht  ry tabindex
                                                            valuetype versio
                                                            ht  ry tabindesy
                                                            =htmlPreStmt,htmlPreEn']"
