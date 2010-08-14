task :pull do
  puts `cp -uv ~/.vim/syntax/todo.vim syntax/`
  puts `cp -uv ~/.vim/ftplugin/todo.vim ftplugin/`
  puts `cp -uv ~/.vim/ftdetect/todo.vim ftdetect/`
  puts 'done'
end

task :push do
  `cp -u syntax/todo.vim ~/.vim/syntax/`
  `cp -u ftplugin/todo.vim ~/.vim/ftplugin/`
  `cp -u ftdetect/todo.vim ~/.vim/ftdetect/`
end
