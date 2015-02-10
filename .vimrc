"显示行号
set nu
"关闭vi兼容模式
set nocompatible
"自动缩进
set autoindent
"语法高亮
syntax on
"制表符设为4空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"侦测文件类型
filetype on
"载入文件类型插件
filetype plugin on

"模板
set ambiwidth=double
colorscheme molokai
let g:molokai_original=1
let g:rehash256=1
set guifont=DejaVu\ Sans\ mono\ 11
set guifontwide=STHeiti\ 14
"自动插件安装
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'mattn/emmet-vim'
Bundle 'The-Nerd-Tree'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'asins/vim-dict'

"在vim启动时调用NERDTree
autocmd VimEnter * NERDTree

autocmd filetype css set dictionary+=$HOME/.vim/bundle/vim-dict/dict/css.dic
autocmd filetype javascript set dictionary+=$HOME/.vim/bundle/vim-dict/dict/javascript.dic
autocmd filetype php set dictionary+=$HOME/.vim/bundle/vim-dict/dict/php.dic
autocmd filetype html set dictionary+=$HOME/.vim/bundle/vim-dict/dict/html5.dic

map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"括号自动补全
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
