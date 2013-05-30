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
"    noremap <silent> <F10> :NERDTreeToggle<CR>
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

"    nnoremap <silent> <Leader>p :CommandT<CR>
"    nnoremap <silent> <Leader>b :CommandTBuffer<CR>
"    nnoremap <silent> <Leader>d :CommandTJump<CR>
"    nnoremap <silent> <Leader>s :CommandTTag<CR>

" TagBar {
    let g:tagbar_autofocus = 1
    nnoremap <silent> <leader>w :TagbarToggle<CR>
"}

"------------------------------neocomplcache---------------------------------------

" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

"let g:neocomplcache_auto_completion_start_length = 3
"let g:neocomplcache_manual_completion_start_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

"let g:neocomplcache_enable_auto_select = 1

" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
    "let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" snippets expand key
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : (pumvisible() ? "\<C-n>" : "\<TAB>")
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

"imap  <silent><expr><TAB>  neocomplcache#plugin#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-e>"
"smap  <TAB>  <RIGHT><Plug>(neocomplcache_snippets_jump)
"inoremap <expr><C-e>     neocomplcache#complete_common_string()

" For snippet_complete marker.
"if has('conceal')
  "set conceallevel=2 concealcursor=i
"endif

let g:SuperTabDefaultCompletionType = "context"
" let g:buffergator_viewport_split_policy = "T"
" let g:buffergator_autoexpand_on_split = 0
" let g:buffergator_sort_regime = "mru"
" let g:buffergator_split_size=10 
"

" function! s:DiffWithSaved()
"  let filetype=&ft
"  diffthis
"  vnew | r # | normal! 1Gdd
"  diffthis
"  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
"endfunction
"com! DiffSaved call s:DiffWithSaved()

" I don't have patched font for now
" let g:Powerline_symbols = 'fancy'
"

let g:ycm_allow_changing_updatetime = 0
