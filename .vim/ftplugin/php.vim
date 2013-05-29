set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

let php_sql_query=1 " to highlight SQL syntax in strings
let php_htmlInStrings=1 " to highlight HTML in string
let php_noShortTags = 1 " to disable short tags 
let php_folding = 0  "to enable folding for classes and functions
let PHP_autoformatcomment = 1
let php_sync_method = -1

" Map ; to "add ; to the end of the line, when missing"
"noremap <buffer> ; :s/\([^;]\)$/\1;/<cr>


" {{{ Automatic close char mapping
" if g:PIVAutoClose
    " if g:PIVPearStyle
        " inoremap <buffer>  { {<CR>}<C-O>O
        " inoremap <buffer> ( (  )<LEFT><LEFT>
    " else
        " inoremap  { {<CR>}<C-O>O
        " inoremap ( ()<LEFT>
    " endif
" 
    " inoremap <buffer> [ []<LEFT>
    " inoremap <buffer> " ""<LEFT>
    " inoremap <buffer> ' ''<LEFT>
" endif
" }}} Automatic close char mapping


" {{{ Wrap visual selections with chars

" vnoremap <buffer> ( "zdi(<C-R>z)<ESC>
" vnoremap <buffer> { "zdi{<C-R>z}<ESC>
" vnoremap <buffer> [ "zdi[<C-R>z]<ESC>
" vnoremap <buffer> ' "zdi'<C-R>z'<ESC>
