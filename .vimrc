" Vundle setup
    set nocompatible " be iMproved
    filetype off     " required!

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    " required!
    Bundle 'gmarik/vundle'

    " My Bundles here:
    " NOTE: comments after Bundle command are not allowed...
    "
    " Libs
        " For FuzzyFinder:
        Bundle 'L9'
    " Interface
        Bundle 'altercation/vim-colors-solarized'
        " Bundle 'scrooloose/nerdtree'
        " Bundle 'ervandew/supertab'
        " Bundle 'wincent/Command-T'
        " Bundle 'vim-scripts/taglist.vim'
        " Bundle 'vim-scripts/IndexedSearch'
        " Bundle 'rphillips/vim-zoomwin'
        " Bundle 'mattn/zencoding-vim'
        " Bundle 'msanders/snipmate.vim'
        " Bundle 'mileszs/ack.vim'
        " Bundle 'scrooloose/nerdcommenter'
        " Bundle 'tpope/vim-surround'
        " Bundle 'tpope/vim-fugitive'
        " Bundle 'tsaleh/vim-align'
        " Bundle 'vim-scripts/bufexplorer.zip'
        " Bundle 'vim-scripts/delimitMate.vim'
        " Bundle 'sjl/gundo.vim'
        " Bundle 'edsono/vim-matchit'
        " Bundle 'sjl/threesome.vim'
        " Bundle 'chrismetcalf/vim-yankring'
        " Bundle 'slack/vim-fuzzyfinder'
    " Tools
        " Bundle 'tpope/vim-fugitive'
    " Lua
        " Bundle 'vim-scripts/lua.vim'
        " Bundle 'rkowal/Lua-Omni-Vim-Completion'
        " Bundle 'xolox/vim-lua-ftplugin'
        " Bundle 'xolox/vim-lua-inspect'
    " HTML/HAML
        " Bundle 'othree/html5.vim'
        " Bundle 'hokaccha/vim-html5validator'
        " Bundle 'tyru/operator-html-escape.vim'
        " Bundle 'tpope/vim-haml'
    " CSS/LESS
        " Bundle 'hail2u/vim-css3-syntax'
        " Bundle 'skammer/vim-css-color'
        " Bundle 'groenewege/vim-less'
    " JavaScript
        " Bundle 'pangloss/vim-javascript'
        " Bundle 'itspriddle/vim-javascript-indent'
        " Bundle 'othree/javascript-syntax.vim'
        " Bundle 'itspriddle/vim-jquery'
        " Bundle 'kchmck/vim-coffee-script'
    " JSON
        " Bundle 'leshill/vim-json'
    " PHP
        " Bundle 'vim-scripts/php.vim--Garvin'
        " Bundle '2072/PHP-Indenting-for-VIm'
    " Python/Django
        " Bundle 'fs111/pydoc.vim'
    " Perl
        " Bundle 'petdance/vim-perl'
        " Bundle 'ggray/vim-tt2'
    " Ruby/Rails
        " Bundle 'vim-ruby/vim-ruby'
        " Bundle 'tpope/vim-rails'
        " Bundle 'tpope/vim-endwise'

    filetype plugin indent on     " required!
    "
    " Brief help
    " :BundleList          - list configured bundles
    " :BundleInstall(!)    - install(update) bundles
    " :BundleSearch(!) foo - search(or refresh cache first) for foo
    " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
    "
    " see :h vundle for more details or wiki for FAQ


" Плагины

    " Solarized
        syntax enable
	set background=dark
	colorscheme solarized
