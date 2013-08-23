" Vim syntax file
" Language: Celestia Star Catalogs
" Maintainer: Kevin Lauder
" Latest Revision: 26 April 2008

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "writeboard"

syn region wbBold start="*" end="*"
syn region wbItalic start="_" end="_"

syn match wbBulletList "^* "
syn match wbNumberList "^# "

syn match wbBlockQuote "bq\. .*$"
syn match wbHeading1 "h1\. .*$"
syn match wbHeading2 "h2\. .*$"

syn match wbLink "\".*\":http://[^ \t]*"
syn match wbImage "!http://.*!"


" Ordered the same as the Writeboard Formatting Guide

hi def link wbBold Constant
hi def link wbItalic Underlined

hi def link wbBulletList Label
hi def link wbNumberList Label

hi def link wbBlockQuote Statement
hi def link wbHeading1 Type
hi def link wbHeading2 Identifier

hi def link wbLink Tag
hi def link wbImage Special

