set nocompatible        " must be first line

" The next three lines ensure that the ~/.vim/bundle/ system works
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

source ~/.vim/bundles.vim

filetype plugin indent on   " Automatically detect file types.
syntax on                   " syntax highlighting
scriptencoding utf-8

colorscheme solarized

set anti
set autoindent                  " indent at the same level of the previous line
"set background=light            " Assume a dark background
set background=dark             " Assume a dark background
set backspace=indent,eol,start  " backspace for dummies
set nobackup                      " backups are nice ...
"set clipboard=unnamed
"set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
set complete=.,b,u,]
set completeopt=menu,preview ",longest
set confirm
set cursorline                  " highlight current line
set enc=utf-8
set eol
set expandtab                   " tabs are spaces, not tabs
"set foldenable                  " auto fold code
set gdefault
set hidden                      " allow buffer switching without saving
set history=1000                " Store a ton of history (default is 20)
set hlsearch                    " highlight search terms
set ignorecase                  " case insensitive search
set incsearch                   " find as you type search
set laststatus=2
set linespace=0                 " No extra spaces between rows
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set matchtime=2
"set matchpairs+=<:>                " match, to be used with %
set modelines=0 " Security
set mouse=a                 " automatically enable mouse usage
set nu                          " Line numbers on
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
set ruler                   " show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set shiftround
set shiftwidth=4                " use indents of 4 spaces
set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
set showcmd                 " show partial commands in status line and
set noshowmatch                   " show matching brackets/parenthesis
set showmode                    " display the current mode
set smartcase                   " case sensitive when uc present
"set smartindent
set softtabstop=4               " let backspace delete indent
set noswapfile
set nospell                       " spell checking off
"set switchbuf=usetab,newtab
set tabpagemax=15               " only show 15 tabs
set tabstop=4                   " an indentation every four columns
set title
set ttymouse=xterm2
set t_Co=256

if has('persistent_undo')
"    set undofile                "so is persistent undo ...
    set undolevels=1000         "maximum number of changes that can be undone
    set undoreload=10000        "maximum number lines to save for undo on a buffer reload
endif

set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set virtualedit=onemore         " allow for cursor beyond last character
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set winminheight=0              " windows can be 0 line high
set nowrap                      " wrap long lines
set nowritebackup

" Broken down into easily includeable segments
set statusline=%<%f\    " Filename
set statusline+=%w%h%m%r " Options
set statusline+=%{fugitive#statusline()} "  Git Hotness
set statusline+=\ [%{&ff}/%Y]            " filetype
set statusline+=\ [%{getcwd()}]          " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

"set statusline=%<%f\ %h%m%r%w\ %y\ %{&ff}
"set statusline+=\ %#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%=%-14.(%l/%04L,%c%V%)\ %P\ %p%%

let mapleader = ' '

let loaded_matchparen = 1

" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" Temporary workaround to Better-CSS-Syntax-for-Vim
" See https://github.com/ChrisYip/Better-CSS-Syntax-for-Vim/issues/9
" for more information
autocmd BufNewFile,BufRead *.scss set filetype=css
autocmd BufNewFile,BufRead *.sass set filetype=css


" OmniComplete {
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
        \if &omnifunc == "" |
        \setlocal omnifunc=syntaxcomplete#Complete |
        \endif
endif

hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

" some convenient mappings
"inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <C-d>      pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
"inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

" automatically open and close the popup menu / preview window
" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" }

command DiffOrig let oft=&ft | vert new | exec 'set bt=nofile ft='.oft | r # | 0d_ | diffthis | wincmd p | diffthis

" let g:DisableAutoPHPFolding = 1

source ~/.vim/plugins.vim
source ~/.vim/mappings.vim
