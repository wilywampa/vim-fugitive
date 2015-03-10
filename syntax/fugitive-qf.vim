" Vim syntax file
" Language:	Quickfix window
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2001 Jan 15

" Quit when a syntax file was already loaded
if exists("b:current_syntax") && b:current_syntax != "qf"
  finish
endif

syn match       qfGitHash       "[[:alnum:]]\{40}" contained
syn match       fugitiveURL     "^fugitive://.\{-}/\ze[[:alnum:]]\{40}" contained conceal
syn match	qfFileName	"^[^|]*" nextgroup=qfSeparator contains=fugitiveURL,qfGitHash
syn match	qfSeparator	"|" nextgroup=qfLineNr contained
syn match	qfLineNr	"[^|]*" contained contains=qfError
syn match	qfError		"error" contained

hi def link qfGitHash   Title
hi def link fugitiveURL Directory
hi def link qfFileName	Directory
hi def link qfLineNr	LineNr
hi def link qfError	Error

let b:current_syntax = "fugitive-qf"

" vim: ts=8
