My VIM Setup
==============

1. Ensure you have [cURL](http://en.wikipedia.org/wiki/CURL) installed.
2. Ensure you have [node.js](http://nodejs.org/) (and npm) installed.

Install pathogen [tpope/vim-pathogen](https://github.com/tpope/vim-pathogen)
----------------------------------------------------------------------------

	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

Add the following into `~/.vimrc`: 

	execute pathogen#infect()

Install html5.vim [othree/html5.vim](https://github.com/othree/html5.vim)
-------------------------------------------------------------------------

	cd ~/.vim/bundle
	git clone git://github.com/othree/html5.vim.git

Install syntastic [scrooloose/syntastic](https://github.com/scrooloose/syntastic)
---------------------------------------------------------------------------------

	cd ~/.vim/bundle
	git clone https://github.com/scrooloose/syntastic.git

Within VIM type `:Helptags`.

Add to `~/.vimrc`:

	let g:syntastic_check_on_open=1

Install [{less}](http://lesscss.org)
------------------------------------

	npm install -g less

Install vim-less [groenewege/vim-less](https://github.com/groenewege/vim-less)
------------------------------------------------------------------------------

	cd ~/.vim/bundle
	git clone https://github.com/groenewege/vim-less

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
