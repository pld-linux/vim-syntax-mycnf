" Vim syntax file
" Language:     MySQL like config files (~/.my.cnf and friends)
" Version Info: $Revision$
" Author:       Elan Ruusamäe <glen@delfi.ee>
" URL:          http://cvs.pld-linux.org/cgi-bin/cvsweb.cgi/packages/vim-syntax-mycnf/
" Last Change:  $Date$
" Comments:     Based on dosini.vim

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" shut case off
syn case ignore

syn match  mycnfLabel		"^.\{-}="
syn region mycnfHeader		start="^\[" end="\]"
syn match  mycnfComment	"^#.*$"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_mycnf_syntax_inits")
  if version < 508
    let did_mycnf_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

    HiLink mycnfHeader	Special
    HiLink mycnfComment	Comment
    HiLink mycnfLabel	Type

  delcommand HiLink
endif

let b:current_syntax = "mycnf"

" vim:ts=4:sw=4
