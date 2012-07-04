frett.vim
=

description
-

this is an ordinary vim plugin to integrate [_frett_](https://github.com/dbldots/frett) into vim. it basically calls frett and populates the search results into the quickfix buffer.

_the assumption is that your current working directory in vim always points to the root of your project._

usage
-

do a basic search with:
 
    :Frett {search_string}
    :Frett def foo

filter results by a filepath:

    :Frett "{search_string}" {path}
    :Frett "def foo" app/models

pass additional options to frett:

    :Frett "search_string" {path} [options]
    :Frett -w "def foo" app/models


call `frett -h` to see all available options.

configuration
-

you may want to define a custom mapping for calling `:Frett` in vim. for example if you want to replace the default MacVim's `<Cmd>+f` put the following into your `.gvimrc`:

    if has('gui_macvim')
      macmenu Edit.Find.Find\.\.\. key=<nop>
      map <D-f> :Frett 
    endif
