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

"代码折叠
set foldenable
set foldmethod=syntax
set foldcolumn=0
setlocal foldlevel=1
set foldlevelstart=99

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
Bundle 'The-NERD-Commenter'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'asins/vim-dict'
Bundle 'groenewege/vim-less'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-easymotion'

"在vim启动时调用NERDTree
autocmd VimEnter * NERDTree

autocmd filetype css set dictionary+=$HOME/.vim/bundle/vim-dict/dict/css.dic
autocmd filetype javascript set dictionary+=$HOME/.vim/bundle/vim-dict/dict/javascript.dic
autocmd filetype php set dictionary+=$HOME/.vim/bundle/vim-dict/dict/php.dic
autocmd filetype html set dictionary+=$HOME/.vim/bundle/vim-dict/dict/html5.dic

autocmd BufNewFile,BufRead *.less setf less

map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Tagbar展开
nmap <F8> :TagbarToggle<CR>

"括号自动补全
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>

"vim-less compile
nnoremap <Leader>m :w <BAR> !lessc % > %:r.css<CR><space>
