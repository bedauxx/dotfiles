set termguicolors
set number
set clipboard=unnamed


if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')
 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('Shougo/neosnippet.vim')
 call dein#add('Shougo/neosnippet-snippets')
 call dein#add('thinca/vim-quickrun') 
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')

 let g:airline_theme = 'wombat'
 set laststatus=2
 let g:airline#extensions#branch#enabled = 1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#wordcount#enabled = 0
 let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
 let g:airline_section_c = '%t'
 let g:airline_section_x = '%{&filetype}'
 let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
 let g:airline#extensions#ale#error_symbol = ' '
 let g:airline#extensions#ale#warning_symbol = ' '
 let g:airline#extensions#default#section_truncate_width = {}
 let g:airline#extensions#whitespace#enabled = 1



 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#end()
 call dein#save_state()
endif





filetype plugin indent on
syntax enable

