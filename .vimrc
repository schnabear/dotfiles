" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
" ViB8_49%b!<%I$r%*%U!JVimB$N3HD%5!G=$rM-8z!K
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
" B%U%!%$%kL>$HFbMF$K$h$C$F%U%!%$%k%?%$%W$rH=JL$7!"%U%!%$%k%?%$%W%W%i%0%$%s$rM-8z$K$9$k
filetype indent plugin on

" Enable syntax highlighting
" B?'$E$1$r%*%s
syntax on

"colorscheme pablo
"colorscheme darkblue
colorscheme molokai

let g:molokai_original = 1
let g:rehash256 = 1

set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
set termencoding=utf8

set title
set showmode
set statusline=[FORMAT=%{&ff}][TYPE=%Y][ASCII=\%03.3b][HEX=\%02.2B][POS=%04l,%04v][%p%%][LEN=%L]%=[%F%m%r%h%w]
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:\

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.
" B6/$/?d>)$9$k%*%W%7%g%s

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
" B%P%C%U%!$rJ]B8$7$J$/$F$bB>$N%P%C%U%!$rI=<($G$-$k$h$&$K$9$k
set hidden

" Better command-line completion
" B%3%^%s%I%i%$%sJd40$rJXMx$K
set wildmenu

" Show partial commands in the last line of the screen
" B%?%$%WESCf$N%3%^%s%I$r2hLL:G2<9T$KI=<(
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
" B8!:w8l$r6/D4I=<(!J<C-L>B$r2!$9$H8=:_$N6/D4I=<($r2r=|$9$k!K
set hlsearch

" Modelines have historically been a source of security vulnerabilities.  As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" BNr;KE*$K%b!<%I%i%$%s$O%;%-%e%j%F%#>e$N@H<e@-$K$J$C$F$$$?$N$G!"
" B%*%U$K$7$FBe$o$j$K>e5-$NsecuremodelinesB%9%/%j%W%H$r;H$&$H$h$$!#
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
" B8!:w;~$KBgJ8;z!&>.J8;z$r6hJL$7$J$$!#$?$@$7!"8!:w8e$KBgJ8;z>.J8;z$,
" B:.:_$7$F$$$k$H$-$O6hJL$9$k
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
" B%*!<%H%$%s%G%s%H!"2~9T!"%$%s%5!<%H%b!<%I3+;OD>8e$K%P%C%/%9%Z!<%9%-!<$G
" B:o=|$G$-$k$h$&$K$9$k!#
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
" B%*!<%H%$%s%G%s%H
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" B0\F0%3%^%s%I$r;H$C$?$H$-!"9TF,$K0\F0$7$J$$
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
" B2hLL:G2<9T$K%k!<%i!<$rI=<($9$k
set ruler

" Always display the status line, even if only one window is displayed
" B%9%F!<%?%9%i%$%s$r>o$KI=<($9$k
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
" B%P%C%U%!$,JQ99$5$l$F$$$k$H$-!"%3%^%s%I$r%(%i!<$K$9$k$N$G$J$/!"J]B8$9$k
" B$+$I$&$+3NG'$r5a$a$k
set confirm

" Use visual bell instead of beeping when doing something wrong
" B%S!<%W$NBe$o$j$K%S%8%e%"%k%Y%k!J2hLL%U%i%C%7%e!K$r;H$&
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
" B$=$7$F%S%8%e%"%k%Y%k$bL58z2=$9$k
set t_vb=

" Enable use of the mouse for all modes
" BA4%b!<%I$G%^%&%9$rM-8z2=
" set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
" B%3%^%s%I%i%$%s$N9b$5$r2B9T$K
set cmdheight=2

" Display line numbers on the left
" B9THV9f$rI=<(
set number

" Quickly time out on keycodes, but never time out on mappings
" B%-!<%3!<%I$O$9$0$K%?%$%`%"%&%H!#%^%C%T%s%0$O%?%$%`%"%&%H$7$J$$
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
" <F11>B%-!<$G'paste'B$H'nopaste'B$r@Z$jBX$($k
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
" B%$%s%G%s%H4XO"$N%*%W%7%g%s {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
" B%?%VJ8;z$NBe$o$j$K%9%Z!<%92B8D$r;H$&>l9g$N@_Dj!#
" B$3$N>l9g!"'tabstop'B$O%G%U%)%k%H$N8B$+$iJQ$($J$$!#
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
" B%$%s%G%s%H$K%O!<%I%?%V$r;H$&>l9g$N@_Dj!#
" B%?%VJ8;z$r2BJ8;zJ,$NI}$GI=<($9$k!#
"set shiftwidth=2
"set tabstop=2


"------------------------------------------------------------
" Mappings {{{1
" B%^%C%T%s%0
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
" YB$NF0:n$rDB$dCB$HF1$8$K$9$k
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
" <C-L>B$G8!:w8e$N6/D4I=<($r2r=|$9$k
nnoremap <C-L> :nohl<CR><C-L>

"------------------------------------------------------------
