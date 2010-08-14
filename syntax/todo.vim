if exists("b:current_syntax")
  finish
endif

syn region todo start=/^ *\[.\?\]:/ end=/ / contains=todoDone,todoTodo transparent keepend

syn match todoDone   /\[x\]:.*$/ contained
syn match todoTodo   /\[ \]:/ contained
syn match todoHeader /^ *-.*$/ 

hi link todoDone Comment
hi link todoTodo Statement
hi link todoHeader Keyword
