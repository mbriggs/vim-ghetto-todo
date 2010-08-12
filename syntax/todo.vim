syntax region todoDone start=/\[x\]:/ end=/$/
hi def todoDoneDefinition gui=italic guifg=#0020A0 guibg=LightGray
hi link todoDone todoDoneDefinition

syntax region todoTodo start=/^\[ \]/ end=/:/
hi def todoTodoDefinition guifg=DarkRed guibg=LightGray
hi link todoTodo todoTodoDefinition

syntax region todoHeader start=/^\./ end=/$/
hi def todoHeaderDefinition gui=bold guifg=Yellow
hi link todoHeader todoHeaderDefinition

