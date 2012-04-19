" use Vim features
set nocompatible

set encoding=utf-8

" enable plug-ins indentation and auto-filetype detection
filetype plugin indent on

" enable colors in terminal Vim, dark option for color scheme,
" zenburn color scheme and auto-syntax highlighting
if &term =~ '^\(xterm\|screen\)$' && $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
colorscheme zenburn
if has('gui_running')
    colorscheme zenburn
endif
syntax enable

" enable automatic file saving when quiting, highlighting the cursor
" line, search highlighting, incremental searching, disable search
" wrapping from bottom to top of file, and keep two lines visible below
" or above the cursor on screen.
set autowriteall
set cursorline
set hlsearch
set incsearch
set nowrapscan
set scrolloff=2

" allow hiding windows and buffers without saving
set hidden
set bufhidden=hide

" set tab and indent options
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
set shiftround

" set F5 as key for setting paste mode
set pastetoggle=<F5>

" set a ruler/status line, set an additional status line when
" multiple windows are open, 
set ruler
set laststatus=1
set statusline=%f	    " file name
set statusline+=\ %y
set statusline+=\ (%n)	    " buffer number
set statusline+=%=	    " move to right side
set statusline+=[%03b:0x%04B]	    " asci value of character under cursor
set statusline+=\ %P
set statusline+=\ %l:%c/%L  " line:column/total lines

" l: Long lines are not broken in insert mode
" t: Auto-wrap text using textwidth
" c: Auto-wrap comments using textwidth
" q: Allow formatting of comments with "gq"
" w: Trailing white space indicates a paragraph continues in the next line
" n: When formatting text, recognize numbered lists
set formatoptions+=ltcqw

" don't insert additional spaces after sentences
set nojoinspaces

" show mode and (partial) command in the last line of the screen.
set showmode
set showcmd

" when a bracket is inserted, briefly jump to the matching one.
set showmatch

" Indicates a fast terminal connection
set ttyfast

" use external grep command
"set grepprg=grep\ -nH\ $*

" indent	allow backspacing over autoindent
" eol		allow backspacing over line breaks (join lines)
" start		allow backspacing over the start of insert
set backspace=indent,eol,start

" what the cursor should look like in different modes
" set cursor to never blink in any mode
set guicursor+=a:blinkon0

" enable popup menus in gvim
set mousemodel=popup

" set no right margin
set textwidth=0

" wrap long lines at a character in 'breakat' rather than at the last
" character that fits on the screen
set linebreak

" view the text with folds, include my custom thesaurus, control how keyword
" completion works
" k	scan the files given with the 'dictionary' option
" s	scan the files given with the 'thesaurus' option
set foldenable
set thesaurus+=$HOME/.vim/myconfig/mthesaur.txt
set complete+=k,s

" I: don't give the intro message when starting Vim
set shortmess+=I

" put new windows below or right of the current one
set splitright
set splitbelow

" as much as possible of the last line in a window will be displayed
set display=lastline

" how many spelling suggestions to show
set spellsuggest=10

" use an icon in the title bar of GVim windows
set guioptions-=i
set icon

" use a visual indicator instead of beeping
set visualbell
set wildmenu                    " command-line completion in an enhanced mode
set wildmode=list:longest,list:full

" allow moving cursor into no man's land
set virtualedit=all

" allow moving cursor left or right across line boundaries
set whichwrap+=l,h

" automatically change to directory of file in buffer
set autochdir

" default to global subsitutions: :%s/foo/bar/g becomes :%s/foo/bar/
" :%s/foo/bar/ becomes :%s/foo/bar/g
set gdefault

" try to get a window title
set title
