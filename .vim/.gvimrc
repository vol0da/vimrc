set t_Co=256

"set gfn=Menlo\ Regular:h14
set gfn=Source\ Code\ Pro:h14
set guioptions-=T
set guioptions-=a
set guioptions+=c
set guioptions-=r
set guioptions-=L

set background=dark
colorscheme solarized

set transp=0

set lines=53
set columns=179

"macmenu &File.New\ Tab key=<nop>
"map <D-t> <Plug>PeepOpen
"macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>

if has("gui_macvim")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

