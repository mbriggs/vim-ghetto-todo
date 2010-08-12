
fun! CompleteToDo()
  if getline('.') =~ '^\[.\]:' 
    let savepos = getpos('.')
    if getline('.') =~ '^\[ ' 
      s/^. /[x/
    elseif getline('.') =~ '^\[x' 
      s/^../[ /
    endif
    call setpos('.', savepos)
  endif
endfun

fun! MakeToDo()
  let savepos = getpos('.')
  if getline('.') =~ '^\[.\]:'
    s/^\[.\]: *//
    let savepos[2] = savepos[2] - 4
  else
    s/^/[ ]: /
    let savepos[2] = savepos[2] + 4
  end
  call setpos('.', savepos)
endfun

nnoremap <buffer> = :call MakeToDo()<cr>
vnoremap <buffer> = :call MakeToDo()<cr>
nnoremap <buffer> - :call CompleteToDo()<cr>
vnoremap <buffer> - :call CompleteToDo()<cr>
