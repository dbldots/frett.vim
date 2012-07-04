" see README
function! Frett(args)
  pwd
  let escape = 1
  " escape unless there are already quotes..
  if len(split(a:args, '"')) > 1
    let escape = 0
  elseif len(split(a:args, "'")) > 1
    let escape = 0
  endif
  if escape == 1
    let &makeprg = 'frett -v "' . a:args . '"'
  else
    let &makeprg = 'frett -v ' . a:args
  endif
  silent make
  copen
endfunction
:command -nargs=1 Frett :call Frett(<f-args>)
