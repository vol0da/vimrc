" Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Easier horizontal scrolling
map zl zL
map zh zH

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" use very magic regexp as default
nnoremap / /\v
vnoremap / /\v

" reselect the text that was just pasted
nnoremap <leader>v V`]

map <Leader>d :DiffOrig<CR>
nnoremap <Leader>k :bd<CR>
nnoremap <leader><leader> <c-^>

"clearing highlighted search
nnoremap <Leader><CR> :noh<cr>

" navigate among windows using ,[hjkl]
" map <Leader>h <C-W>h
" map <Leader>j <C-W>j
" map <Leader>k <C-W>k
" map <Leader>l <C-W>l

" Wrapped lines goes down/up to next row, rather than next line in file.
" nnoremap j gj
" nnoremap k gk

" nnoremap <tab> %
" vnoremap <tab> %

"------  Buffers  ------
" Ctrl Left & Right move between buffers
" noremap <silent> <C-h> :bprev<CR>
" noremap <silent> <C-l> :bnext<CR>
" map <Leader>n :bnext<CR>
" map <Leader>p :bprevious<CR>
"
" These prevent accidentally loading files while in the NERDTree panel
"autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
"autocmd FileType nerdtree noremap <buffer> <c-l> <nop>
