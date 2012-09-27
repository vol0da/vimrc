"let mapleader = ','

map <Leader>e :CtrlPMRU<CR>
map <Leader>t :CtrlPBufTag<CR>
map <Leader>z :CtrlPTag<CR>
map <Leader>b :CtrlPBuffer<CR>

" navigate among windows using ,[hjkl]
map <Leader>h <C-W>h
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>l <C-W>l

nnoremap <Leader><CR> :noh<cr>
nnoremap <Leader>q :bd<CR>

imap jj <ESC>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"clear search highlight

" use very magic regexp as default
nnoremap / /\v
vnoremap / /\v

nnoremap <tab> %
vnoremap <tab> %

nnoremap ; :
nnoremap Y y$

" reselect the text that was just pasted
nnoremap <leader>v V`]

" Toggle paste mode
noremap <silent> <F5> :GundoToggle<CR>
noremap <silent> <F9> :TagbarToggle<CR>
noremap <silent> <F10> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>r :NERDTreeFind<CR>
set pastetoggle=<F12>

vnoremap < <gv
vnoremap > >gv


"------  Buffers  ------
" Ctrl Left & Right move between buffers
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-l> :bnext<CR>
map <Leader>n :bnext<CR>
map <Leader>p :bprevious<CR>
"
" These prevent accidentally loading files while in the NERDTree panel
autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
autocmd FileType nerdtree noremap <buffer> <c-l> <nop>

