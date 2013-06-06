" CtrlP {
    " let g:ctrlp_map = '<d-t>'
    let g:ctrlp_match_window_bottom = 1
    let g:ctrlp_dotfiles = 0
    let g:ctrlp_root_markers = ['.root_dir']
    let g:ctrlp_mruf_relative = 1
    let g:ctrlp_working_path_mode = '0'
    let g:ctrlp_buftag_types = {
                \ 'php': '--PHP-kinds=cf'
                \ }

    map <Leader>e :CtrlPMRU<CR>
    map <Leader>b :CtrlPBufTag<CR>
    map <Leader>w :CtrlPTag<CR>
    map <Leader>q :CtrlPBuffer<CR>
" }

" DelimitMate {
    let g:delimitMate_expand_cr = 1
    let g:delimitMate_expand_space = 1
    let g:delimitMate_balance_matchpairs = 1
    imap <expr><CR> pumvisible() ? "\<C-y>" : "\<Plug>delimitMateCR"
" }

noremap <silent> <F5> :GundoToggle<CR>
noremap <silent> <Leader>u :GundoToggle<CR>

" Misc {
    let g:NERDShutUp=1
    let b:match_ignorecase = 1
" }

" NerdTree {
    noremap <silent> <F2> :NERDTreeToggle<CR>
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

" Solarized scheme {
    let g:solarized_termtrans=0
    let g:solarized_termcolors=256
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
" }

let g:SuperTabDefaultCompletionType = "context"

" Syntastic {
    let g:syntastic_auto_loc_list=1
    let g:syntastic_echo_current_error=0
    let g:syntastic_php_checkers=['php']
    " let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
    noremap <Leader>s :let g:syntastic_php_checkers=['phpcs', 'phpmd']<CR>:w<CR>:let g:syntastic_php_checkers=['php']<CR>
" }

" TagBar {
    let g:tagbar_phpctags_bin='~/bin/phpctags'
    let g:tagbar_autofocus = 1
    nnoremap <silent> <leader>t :TagbarToggle<CR>
" }

let g:ycm_allow_changing_updatetime = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 0
