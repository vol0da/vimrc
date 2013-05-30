let g:syntastic_auto_loc_list=1
let g:syntastic_echo_current_error=0

let g:solarized_termtrans=0
let g:solarized_termcolors=256
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1
imap <expr><CR> pumvisible() ? "\<C-y>" : "\<Plug>delimitMateCR"


" Misc {
    let g:NERDShutUp=1
    let b:match_ignorecase = 1
" }

"CtrlP {
    " let g:ctrlp_map = '<d-t>'
    let g:ctrlp_match_window_bottom = 0
    let g:ctrlp_dotfiles = 0
    let g:ctrlp_root_markers = ['.root_dir']
    let g:ctrlp_mruf_relative = 1
    let g:ctrlp_working_path_mode = '0'
    let g:ctrlp_buftag_types = {
                \ 'php': '--PHP-kinds=+cf'
                \ }

    map <Leader>e :CtrlPMRU<CR>
    map <Leader>s :CtrlPBufTag<CR>
    map <Leader>d :CtrlPTag<CR>
    map <Leader>b :CtrlPBuffer<CR>
" }

" NerdTree {
    noremap <silent> <Leader>t :NERDTreeToggle<CR>
    noremap <silent> <Leader>r :NERDTreeFind<CR>

    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
    let NERDTreeChDirMode=2
    let NERDTreeQuitOnOpen=0
    let NERDTreeMouseMode=2
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
    let g:nerdtree_tabs_open_on_gui_startup=0
" }

" TagBar {
    let g:tagbar_autofocus = 1
    nnoremap <silent> <leader>w :TagbarToggle<CR>
"}

let g:ycm_allow_changing_updatetime = 0

let g:tagbar_phpctags_bin='~/bin/phpctags'
