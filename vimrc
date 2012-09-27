set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

filetype plugin indent on
syntax on

colorscheme solarized

set anti
set autoindent
set background=light
set backspace=start,indent,eol
set backup
set backupdir=~/.vim/_backup
set binary
set clipboard+=unnamed
set completeopt=menu,longest,preview
set confirm
set nocursorline
set directory=~/.vim/_swap
set enc=utf-8
set noeol
set expandtab
set foldcolumn=2
set foldenable
set foldlevelstart=0
set foldmethod=syntax
set gdefault
set history=100
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set matchtime=2
set modelines=0 " Security
set mouse=a
set number
set pastetoggle=<F12>
set ruler
"set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set scrolloff=4 " Always show 4 lines above and bellow cursor (context)
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set smartindent
set softtabstop=4
set nospell

set statusline=%<%f\ %h%m%r%w\ %y\ %{&ff}
set statusline+=\ %#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=%-14.(%l/%04L,%c%V%)\ %P\ %p%%

" set statusline=%<%f\    " Filename
" set statusline+=%w%h%m%r " Options
"set statusline+=%{fugitive#statusline()} "  Git Hotness
" set statusline+=\ [%{&ff}/%Y]            " filetype
" set statusline+=\ [%{getcwd()}]          " current dir
" set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

" set switchbuf=usetab,newtab
set swapfile
set tabstop=4
set title
set ttymouse=xterm2
set undodir=~/.vim/_undo
set undofile                "so is persistent undo ...
set undolevels=1000         "maximum number of changes that can be undone
set undoreload=10000        "maximum number lines to save for undo on a buffer reload
set whichwrap=b,s,h,l,<,>,[,]
set wildmenu
set wildmode=list:longest,full
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set nowrap
" set nowritebackup

hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE


source ~/.vim/plugins.vim
source ~/.vim/mappings.vim

command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" autocmd InsertEnter * setlocal nofoldenable
"autocmd InsertLeave * setlocal foldenable

