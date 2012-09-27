let g:syntastic_auto_loc_list=1

let g:solarized_termtrans=0
let g:solarized_termcolors=256
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

"let g:SuperTabDefaultCompletionType = "context"

let g:tagbar_autofocus = 1

" let g:buffergator_viewport_split_policy = "T"
" let g:buffergator_autoexpand_on_split = 0
" let g:buffergator_sort_regime = "mru"
" let g:buffergator_split_size=10 

" let g:ctrlp_map = '<d-t>'
"let g:ctrlp_match_window_bottom = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_root_markers = ['.root_dir']
let g:ctrlp_mruf_relative = 1

function OpenPHPManual(keyword)
    exec '!' . 'open http://php.net/' . a:keyword
endfunction

