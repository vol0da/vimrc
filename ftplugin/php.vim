set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

"let php_sql_query=1
"let php_htmlInStrings=1
let php_noShortTags=0
let php_folding=1

nnoremap <Leader>d :call PhpDocSingle()<CR>
vnoremap <Leader>d :call PhpDocRange()<CR>

set keywordprg=~/bin/phpdoc.sh


