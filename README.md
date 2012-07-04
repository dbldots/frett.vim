# frett.vim


## description


this is an ordinary vim plugin to integrate [_frett_](https://github.com/dbldots/frett) into vim. it basically calls frett and populates the search results into the quickfix buffer.

_the assumption is that your current working directory in vim always points to the root of your project._

## usage

### do a basic search with:
 
    :Frett {search_string}
    :Frett def foo

`"def foo"` will be quoted automatically.

### filter results by a filepath:

    :Frett "{search_string}" {path}
    :Frett "def foo" app/models

### pass additional options to frett:

    :Frett "search_string" {path} [options]
    :Frett -w "def foo" app/models


call `frett -h` to see all available options.

## configuration

you may want to define a custom mapping for calling `:Frett` in vim. for example if you want to replace the default MacVim's `<Cmd>+f` put the following into your `.gvimrc`:

    if has('gui_macvim')
      macmenu Edit.Find.Find\.\.\. key=<nop>
      map <D-f> :Frett 
    endif

## license

(The MIT License)

Copyright © 2012 johannes-kostas goetzinger

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
