My VIM Setup
==============

Ensure you have [node.js](http://nodejs.org/) (and npm) installed.

Submodules
----------

I have installed the following repositories as git submodules:

+ pathogen [tpope/vim-pathogen](https://github.com/tpope/vim-pathogen)
  Prepend the following to `~/.vimrc`: 

  ```
  runtime bundle/vim-pathogen/autoload/pathogen.vim
  execute pathogen#infect()
  ```
+ html5.vim [othree/html5.vim](https://github.com/othree/html5.vim)
+ vim-css3-syntax [hail2u/vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
+ vim-css-color [skammer/vim-css-color](https://github.com/skammer/vim-css-color)
+ vim-less [groenewege/vim-less](https://github.com/groenewege/vim-less)
+ syntastic [scrooloose/syntastic](https://github.com/scrooloose/syntastic)
  Within VIM type `:Helptags`.
  Add to `~/.vimrc`:

  ```
	syntax on
	let g:syntastic_check_on_open=1
  ```

Install [{less}](http://lesscss.org)
------------------------------------

	npm install -g less

Install [jshint](http://www.jshint.com/)
----------------------------------------

	npm install -g jshint

Adjust `~/.jshintrc` to your needs.

Add to `~/.vimrc`:

	let g:syntastic_javascript_checkers=['jshint']

Install [uglify-js](https://github.com/mishoo/UglifyJS2)
--------------------------------------------------------

	npm install -g uglify-js

Adjust `~/.vimrc`
-----------------

Example file provided.
