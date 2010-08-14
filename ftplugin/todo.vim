
fun! CompleteToDo()
  if getline('.') =~ '^ *\[.\]:' 
    let savepos = getpos('.')
    if getline('.') =~ '^ *\[ ' 
      s/^\( *\). /\1[x/
    elseif getline('.') =~ '^ *\[x' 
      s/^\( *\)../\1[ /
    endif
    call setpos('.', savepos)
  endif
endfun

fun! MakeToDo()
  let savepos = getpos('.')
  if getline('.') =~ '^ *\[.\]:'
    s/^\( *\)\[.\]: */\1/
    let savepos[2] = savepos[2] - 4
  else
    s/^\( *\)/\1[ ]: /
    let savepos[2] = savepos[2] + 4
  end
  call setpos('.', savepos)
endfun

nnoremap <buffer> <silent> = :call MakeToDo()<cr>
vnoremap <buffer> <silent> = :call MakeToDo()<cr>
inoremap <buffer> <silent> ,,, <esc>:call MakeToDo()<cr>a
nnoremap <buffer> <silent> - :call CompleteToDo()<cr>
vnoremap <buffer> <silent> - :call CompleteToDo()<cr>
