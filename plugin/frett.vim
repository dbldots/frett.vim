" helper function to call frett (https://github.com/dbldots/frett)
" and to populate the search result in the quickfix window
" first argument is your searchstring. quote it if you're passing additional
" arguments
" second (optional) argument is a (file)path to filter for. just put a '/'
" if you don't want to filter by path
" all further (optional) arguments are passed to the frett call, e.g. -N -w
function! Frett(needle, ...)
  pwd
  let &makeprg='frett -v ' . join(a:000[1:-1])
  if a:0 > 0
    execute 'silent make ' . a:needle . ' ' . a:1
  else
    execute 'silent make "' . a:needle . '"'
  endif
  copen
endfunction
:command -nargs=* Frett :call Frett(<f-args>)
