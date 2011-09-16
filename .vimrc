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
        Bundle 'scrooloose/nerdtree'
        Bundle 'ervandew/supertab'
        "Bundle 'wincent/Command-T'
        "Bundle 'vim-scripts/taglist.vim'
        "Bundle 'vim-scripts/IndexedSearch'
        "Bundle 'rphillips/vim-zoomwin'
        Bundle 'mattn/zencoding-vim'
        "Bundle 'vim-scripts/UltiSnips'
        Bundle 'msanders/snipmate.vim'
        Bundle 'miripiruni/vimi-snippets'
        "Bundle 'mileszs/ack.vim'
        Bundle 'scrooloose/nerdcommenter'
        "Bundle 'tpope/vim-surround'
        "Bundle 'tpope/vim-fugitive'
        "Bundle 'tsaleh/vim-align'
        "Bundle 'vim-scripts/bufexplorer.zip'
        "Bundle 'vim-scripts/delimitMate.vim'
        "Bundle 'sjl/gundo.vim'
        "Bundle 'edsono/vim-matchit'
        "Bundle 'sjl/threesome.vim'
        Bundle 'chrismetcalf/vim-yankring'
        "Bundle 'slack/vim-fuzzyfinder'
    " Lua
        "Bundle 'vim-scripts/lua.vim'
        "Bundle 'rkowal/Lua-Omni-Vim-Completion'
        "Bundle 'xolox/vim-lua-ftplugin'
        "Bundle 'xolox/vim-lua-inspect'
    " HTML/HAML
        Bundle 'othree/html5.vim'
        Bundle 'hokaccha/vim-html5validator'
        "Bundle 'tyru/operator-html-escape.vim'
        Bundle 'tpope/vim-haml'
    " CSS/LESS
        Bundle 'hail2u/vim-css3-syntax'
        Bundle 'skammer/vim-css-color'
        Bundle 'groenewege/vim-less'
    " JavaScript
        Bundle 'pangloss/vim-javascript'
        Bundle 'itspriddle/vim-jquery'
        Bundle 'kchmck/vim-coffee-script'
    " JSON
        Bundle 'leshill/vim-json'
    " PHP
        Bundle 'vim-scripts/php.vim--Garvin'
        Bundle '2072/PHP-Indenting-for-VIm'
    " Python/Django
        "Bundle 'fs111/pydoc.vim'
    " Perl
        Bundle 'petdance/vim-perl'
        Bundle 'ggray/vim-tt2'
    " Ruby/Rails
        "Bundle 'vim-ruby/vim-ruby'
        "Bundle 'tpope/vim-rails'
        "Bundle 'tpope/vim-endwise'

    filetype plugin indent on     " required!
    " Brief help
    " :BundleList          - list configured bundles
    " :BundleInstall(!)    - install(update) bundles
    " :BundleSearch(!) foo - search(or refresh cache first) for foo
    " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
    "
    " see :h vundle for more details or wiki for FAQ




" Interface
    set nonumber                    " Показываем нумерацию строк
    set encoding=utf-8            " character encoding used inside Vim.
    set fileencodings=utf8,cp1251 " Возможные кодировки файлов и последовательность определения
    set wildmenu " Саджест по <tab> в командной строке
                 " When 'wildmenu' is on, command-line completion operates in an enhanced
                 " mode.  On pressing 'wildchar' (usually <Tab>) to invoke completion,
                 " the possible matches are shown just above the command line, with the
                 " first match highlighted (overwriting the status line, if there is
                 " one).
    set title " window title
              " the title of the window will be set to the value of 'titlestring'
              " (if it is not empty), or to: filename [+=-] (path) - VIM
    set showcmd " Show (partial) command in the last line of the screen
                " Set this option off if your terminal is slow.
                " In Visual mode the size of the selected area is shown:
                " - When selecting characters within a line, the number of characters.
                "   If the number of bytes is different it is also displayed: "2-6"
                "   means two characters and six bytes.
                " - When selecting more than one line, the number of lines.
                " - When selecting a block, the size in screen characters:
                "   {lines}x{columns}.
    " set scrolljump=5
    " set scrolloff=3
    set scrolloff=999       " focus mode like in Writer app http://www.iawriter.com/
    set showtabline=2       " Показывать табы всегда
    set list                " Показывать табуляцию и eol-символ текущей строки
    set wrap                " Включаем перенос строк (http://vimcasts.org/episodes/soft-wrapping-text/)
    if version >= 703
        set colorcolumn=120  " Подсвечиваем эти столбцы
    endif
    set linebreak           " Перенос не разрывая слов
    set autoindent          " Копирует отступ от предыдущей строки
    set smartindent         " Включаем 'умную' автоматическую расстановку отступов
    set expandtab
    set shiftwidth=4        " Размер сдвига при нажатии на клавиши << и >>
    set tabstop=4           " Размер табуляции
    set softtabstop=4
    set linespace=1         " add some line space for easy reading
    set cursorline          " Подсветка строки, в которой находится в данный момент курсор
    set gcr=n:blinkon0      " Отключаем мигание курсора в MacVim. Больше никакого стресса.
    "set guioptions-=T      " Отключаем панель инструментов
    "set guioptions+=e      " Отключаем графические табы (текстовые занимают меньше места)
    set guioptions=         " Вырубаем все лишнее из ГУИ, если надо потогглить см <F6>
    set guicursor=          " Отключаем мигание курсора
    set splitbelow          " новый сплит будет ниже текущего :sp
    set splitright          " новый сплит будет правее текущего :vsp
    set shortmess+=I        " не показывать intro screen

    " Не бибикать!
        set novisualbell
        set t_vb=

    " Символ табуляции и конца строки
        if has('multi_byte')
            if version >= 700
                set listchars=tab:▸\ ,trail:·,extends:→,precedes:←,nbsp:×
                " set listchars=tab:▸\ ,eol:¬ " Textmate like
            else
                set listchars=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:_
            endif
        endif

    " Символ, который будет показан перед перенесенной строкой
        if has("linebreak")
              let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines
        endif

    " Приводим в порядок status line
        " from https://github.com/vgod/vimrc/blob/master/vimrc
        set laststatus=2
        set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
        set statusline+=\ \ \ [%{&ff}/%Y]%=file=%{&fileencoding}\ enc=%{&encoding}\ 
        set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
        set statusline+=\ \ \ %=%-10.(%l,%c%V%)\ %p%%/%L
        fun! CurDir()
            let curdir = substitute(getcwd(), $HOME, "~", "")
            return curdir
        endfunction
        fun! HasPaste()
            if &paste
                return '[PASTE]'
            else
                return ''
            endif
        endfunction

    " Show the line and column number of the cursor position
        set ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

    " Создаем меню с кодировками
        menu Encoding.UTF-8 :e ++enc=utf8 <CR>
        menu Encoding.Windows-1251 :e ++enc=cp1251<CR>
        menu Encoding.koi8-r :e ++enc=koi8-r<CR>
        menu Encoding.cp866 :e ++enc=cp866<CR>

    " Проверка орфографии
        if version >= 700
            set spell spelllang= 
            set nospell " По умолчанию проверка орфографии выключена
            menu Spell.off :setlocal spell spelllang= <cr>
            menu Spell.Russian+English :setlocal spell spelllang=ru,en <cr>
            menu Spell.Russian :setlocal spell spelllang=ru <cr>
            menu Spell.English :setlocal spell spelllang=en <cr>
            menu Spell.-SpellControl- :
            menu Spell.Word\ Suggest<Tab>z= z=
            menu Spell.Previous\ Wrong\ Word<Tab>[s [s
            menu Spell.Next\ Wrong\ Word<Tab>]s ]s
        endif

    " Фолдинг
        " zf - создает новую складку (актуально при foldmethod=manual).
        " zd - удаляет складку, на которой в данный момент находится курсор.
        " zD - рекурсивно удаляет все складки под курсором.
        " zE - удаляет все складки в окне.
        " zo - открыть текущую складку.
        " zO - открыть текущую складку и все складки внутри нее.
        " zc - скрыть текущую складку.
        " zС - скрыть текущую складку и все складки внутри нее.
        " za - скрыть/открыть текущую складку.
        " zA - скрыть/открыть текущую складку и все складки внутри нее.
        " {zr, zm} - {увеличивает, уменьшает} на 1 уровень сокрытия складок.
        " {zR, zM} - {открыть, скрыть} все складки.
        set foldcolumn=2        " Ширина строки где располагается фолдинг
        set foldmethod=manual   " Фолдинг по отступам
        set foldnestmax=10      " Глубина фолдинга 10 уровней
        set nofoldenable        " Не фолдить по умолчанию
        set foldlevel=1         " This is just what i use

    " Не показывать парную скобку
        let loaded_matchparen=1 " перестает прыгать на парную скобку, показывая где она. +100 к скокости
        set noshowmatch " Не показывать парные <> в HTML





" Search
    set incsearch   " При поиске перескакивать на найденный текст в процессе набора строки
    set showmatch
    set hlsearch    " Включаем подсветку выражения, которое ищется в тексте
    set ignorecase  " Игнорировать регистр букв при поиске
    set smartcase
    set gdefault






" Шорткаты

    let mapleader = "," " мапим <Leader> на запятую. По умолчанию <Leader> это обратный слэш \

    " ,m
        " в Normal mode тогглит поддержку мыши
        function! ToggleMouse()
          if &mouse == 'a'
            set mouse=
            echo "Mouse usage disabled"
          else
            set mouse=a
            echo "Mouse usage enabled"
          endif
        endfunction
        nnoremap <leader>m :call ToggleMouse()<CR>

    " ,r
        " Поиск и замена во всех открытых буферах http://vim.wikia.com/wiki/VimTip382
        function! Replace()
            let s:word = input("Replace " . expand('<cword>') . " with:")
            :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
            :unlet! s:word
        endfunction
        map ,r :call Replace()<CR>

    " <Esc>
        " Clear the search highlight by pressing ENTER when in Normal mode (Typing commands)
        :nnoremap <Esc> :nohlsearch<CR>/<BS>

    " < >
        vnoremap < <gv
        vnoremap > >gv

    " <F3>
        " Вставлять код извне без этой строчки проблематично, без нее начитается
        " бешеный реформат кода
        set pastetoggle=<F3>

    " <F2>
        " Fast Save File
        map <F2> :w<CR>
        vmap <F2> <ESC>:w<CR>v
        imap <F2> <ESC>:w<CR>i

    " <F4>
        " Toggle line numbers type http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
        let g:relativenumber = 0
        function! ToogleRelativeNumber()
          if g:relativenumber == 0
            let g:relativenumber = 1
            set norelativenumber
            set number
          elseif g:relativenumber == 1
            let g:relativenumber = 2
            set nonumber
            set relativenumber
          else
            let g:relativenumber = 0
            set nonumber
            set norelativenumber
          endif
        endfunction
        map <F4> :call ToogleRelativeNumber()<cr>

    " <F6>
        function! ToggleGUINoise()
          if &go==''
            exec('se go=mTrL')
          else
            exec('se go=')
          endif
        endfunction
        map <F6> <Esc>:call ToggleGUINoise()<cr>

    " ,f
        " Fast grep
        " грепает в текущей директории по слову, на котором стоит курсор
        map <Leader>f :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

    " Перемещение строк
        " переместить одну строку
        nmap <C-S-k> ddkP
        nmap <C-S-j> ddp
        " переместить несколько выделенных строк http://www.vim.org/scripts/script.php?script_id=1590
        vmap <C-S-k> xkP'[V']
        vmap <C-S-j> xp'[V']

    " Мапим {действие} от курсора до конца строки
        nnoremap Y y$
        nnoremap D d$
        nnoremap C c$

    " Pasting with correct indention
        nmap ]p p=`]
        nmap ]P P=`[

    " Disable <Arrow keys>
        " Warning: nightmare mode!
        inoremap <Up> <NOP>
        inoremap <Down> <NOP>
        inoremap <Left> <NOP>
        inoremap <Right> <NOP>
        noremap <Up> <NOP>
        noremap <Down> <NOP>
        " Позволяем передвигаться с помощью hjkl в Insert mode зажав <Ctrl>
        imap <C-h> <C-o>h
        imap <C-j> <C-o>j
        imap <C-k> <C-o>k
        imap <C-l> <C-o>l

    " ,v
        " Pressing ,v opens the .vimrc in a new tab
        nmap <leader>v :tabedit $MYVIMRC<CR>

    " <C-s> for saving file
        nmap <C-s> :w<CR>
        imap <silent> <C-s> <Esc>:w<CR>a

    " Textmate-like indentation
        nmap <D-[> <<
        nmap <D-]> >>
        vmap <D-[> <gv
        vmap <D-]> >gv
        imap <D-[> <c-o><<
        imap <D-]> <c-o>>>

    " <Space> = <PageDown> Как в браузерах
        nmap <Space> <PageDown>

    " n и N
        " когда бегаем по результатам поиска, то пусть они всегда будут в центре
        nmap n nzz
        nmap N Nzz
        nmap * *zz
        nmap # #zz
        nmap g* g*zz
        nmap g# g#zz

    " K to split
        " Basically this splits the current line into two new ones at the cursor position,
        " then joins the second one with whatever comes next.
        "
        " Example:                      Cursor Here
        "                                    |
        "                                    V
        " foo = ('hello', 'world', 'a', 'b', 'c',
        "        'd', 'e')
        "
        " becomes
        "
        " foo = ('hello', 'world', 'a', 'b',
        "        'c', 'd', 'e')
        "
        " Especially useful for adding items in the middle of long lists/tuples in Python
        " while maintaining a sane text width.
        nnoremap K <nop>
        nnoremap K h/[^ ]<cr>"zd$jyyP^v$h"zpJk:s/\v +$//<cr>:noh<cr>j^

    " It's 2011. Don't skip wrap lines
        noremap j gj
        noremap k gk

    " <Return> toggle command mode
        nmap <Return> :

    " gf открывает фойл под курсором в вертикальном сплите
        " (по дефолту gf открывает файл в том же буфере)
        nmap gf :vertical wincmd f<CR>

    " buffer
        nmap <Leader><left>  :leftabove  vnew<CR>
        nmap <Leader><right> :rightbelow vnew<CR>
        nmap <Leader><up>    :leftabove  new<CR>
        nmap <Leader><down>  :rightbelow new<CR>

    " <C-w> to close the current buffer
        "nmap <silent> <C-w> :bdelete<CR>

    " Tab & split navigation
        nmap <C-Tab> <C-W>w
        nmap <A-Tab> gt
        nmap <A-S-Tab> gT





" Environment
    set history=1000 " store lots of :cmdline history
    set formatoptions-=o "dont continue comments when pushing o/O
    cmap w!! %!sudo tee > /dev/null % " save file with root permissions"

    " Backspacing settings
        " start     allow backspacing over the start of insert; CTRL-W and CTRL-U stop once at the start of insert.
        " indent    allow backspacing over autoindent
        " eol       allow backspacing over line breaks (join lines)
        set backspace=indent,eol,start

    " Backup и swp файлы
        set backupdir=~/tmp/bac " Директория для backup файлов
        set directory=~/tmp/swp " Директория для swp файлов

    " Загрузка предыдущей сессии
        set viminfo='10,\"100,:20,%,n~/.viminfo
        " Устанавливаем курсор в файле на место, где он был при закрытии этого файла
        au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " AutoReload .vimrc
        " from http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
        " Source the vimrc file after saving it
        if has("autocmd")
          autocmd! bufwritepost .vimrc source $MYVIMRC
        endif

    " Go to last file(s) if invoked without arguments
        " http://vimcastsim.wikia.com/wiki/Open_the_last_edited_file
        " autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
        "     \ call mkdir($HOME . "/.vim") |
        "     \ endif |
        "     \ execute "mksession! " . $HOME . "/.vim/Session.vim"
        " autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
        "     \ execute "source " . $HOME . "/.vim/Session.vim"

    " Save on losing focus
        autocmd FocusLost * :wa




" Плагины

    " Solarized
        syntax enable
        set background=dark
        colorscheme solarized

    " NERDTree
        nmap <Bs> :NERDTreeToggle<CR>
        let NERDTreeShowBookmarks=1
        let NERDTreeChDirMode=2
        let NERDTreeQuitOnOpen=1
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=0
        let NERDTreeMinimalUI=1 " Disables display of the 'Bookmarks' label and 'Press ? for help' text.
        let NERDTreeDirArrows=1 " Tells the NERD tree to use arrows instead of + ~ chars when displaying directories.

    " Zen Coding
        let g:user_zen_settings = {
          \  'php' : {
          \    'extends' : 'html',
          \    'filters' : 'c',
          \  },
          \  'xml' : {
          \    'extends' : 'html',
          \  },
          \  'haml' : {
          \    'extends' : 'html',
          \  },
          \}

    " NERDCommenter
        " IDEA-like and TextMate-like comment shortcuts
        nmap <D-/> <Leader>c<space>
        vmap <D-/> <Leader>cc
        imap <D-/> <c-o><plug>NERDCommenterToggle

    " UltiSnips
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpForwardTrigger="<tab>"
        let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
