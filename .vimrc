"
"             __             
"     __   __/_/___ ___  
"     \ \ / / / __ `__ \
"      \ V / / / / / / /
"       \_/_/_/ /_/ /_/
"                    
"            
"
" Author: Bq <bq5773718@163.com>
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 定义快捷键的前缀，即<Leader>
let mapleader = ","
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 不让vim发出讨厌的滴滴声
set noerrorbells
" 不要使用vi的键盘模式，使用vim自己的
set nocompatible
" 去掉输入错误的提示
set noeb
" 告诉我们文件的哪一行被改变过
set report=0
" 可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开启语法高亮功能
syntax enable
" 允许指定语法高亮配色方案替换默认方案
syntax on
" 开启256色支持，默认是8色
set t_Co=256
" 命令行显示输入的命令
set showcmd         
" 命令行的高度
set cmdheight=2
" 命令行显示vim当前模式
set showmode
" 总是显示状态栏
set laststatus=2
" 开启行号显示
set number
" 显示光标当前位置
set ruler           
" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 用浅色高亮当前行
autocmd InsertEnter * se cul    
" 禁止显示菜单和工具条
set guioptions-=T           
set guioptions-=m           
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 字符间插入的像素行数目
set linespace=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行的距离
set scrolloff=3
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置自动缩进
set autoindent
" 设置使用C/C++语言的自动缩进方式
set cindent
" 设置C/C++语言的具体缩进方式
set cinoptions=g0,:0,N-s,(0
" 智能的选择对其方式
set smartindent
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让vim把连续数量的空格视为一个制表符
set softtabstop=4
" 在行和段开始处使用制表符
set smarttab
" 历史文件中需要记录的行数
set history=1000
" 禁止折行
set nowrap
" 使用回格键正常处理indent,eol,start等
set backspace=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示搜索结果
set hlsearch
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 设置魔术
set magic                   

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码折叠
" zc ,zC 折叠
" zo ,zO展开折叠 zi展开/关闭所有创建的折叠
" zf ,创建折叠 zfgg从当前位置到文件头创建折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基于缩进代码折叠
" set foldmethod=indent
" 基于标记代码识别
set foldmethod=marker
" 启动vim时关闭折叠代码
set nofoldenable
"在窗口左边显示一个小栏标识各个折叠 
set foldcolumn=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim自身命名行模式智能补全
set wildmenu
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 禁止生成临时文件
set nobackup
set noswapfile
" 文件在vim之外修改过，自动重新读入
set autoread
" 设置自动保存
set autowrite
" 在处理未保存或只读文件的时候，弹出确认
set confirm

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
" 帮助系统设置为中文
set helplang=cn
" 设置编码格式
set termencoding=utf-8
set encoding=utf8
" 使用utf-8或gbk打开文件
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 新建文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.cpp,*.cc,*.c,*.hpp,*.h,*.sh,*.py exec ":call SetTitle()" 
func SetTitle() 
   " if &filetype == 'sh'   
   "     call setline(1,"\#########################################################################")   
   "     call append(line("."), "\# File Name: ".expand("%"))   
   "     call append(line(".")+1, "\# Author: ma6174")   
   "     call append(line(".")+2, "\# mail: ma6174@163.com")   
   "     call append(line(".")+3, "\# Created Time: ".strftime("%c"))   
   "     call append(line(".")+4, "\#########################################################################")   
   "     call append(line(".")+5, "\#!/bin/bash")   
   "     call append(line(".")+6, "")   
   " else   
   "     call setline(1, "/*************************************************************************")   
   "     call append(line("."), "    > File Name: ".expand("%"))   
   "     call append(line(".")+1, "    > Author: ma6174")   
   "     call append(line(".")+2, "    > Mail: ma6174@163.com ")   
   "     call append(line(".")+3, "    > Created Time: ".strftime("%c"))   
   "     call append(line(".")+4, " ************************************************************************/")   
   "     call append(line(".")+5, "")  
   " endif  
	if expand("%:e") == 'sh'
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "") 
    elseif expand("%:e") == 'cpp'
		call setline(1,"#include <iostream>") 
		call append(line("."), "") 
    elseif expand("%:e") == 'cc'
		call setline(1,"#include <iostream>") 
		call append(line("."), "") 
    elseif expand("%:e") == 'c'
		call setline(1,"#include <stdio.h>") 
		call append(line("."), "") 
    elseif expand("%:e") == 'h'
		call setline(1, "#pragma once")
    elseif expand("%:e") == 'hpp'
		call setline(1, "#pragma once")
	endif
endfunc 
autocmd BufNewFile * normal G

" Vundle
filetype off        

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" vundle 管理的插件列表必须位于vundle#begin()和vundle#end()之间
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'chxuan/change-colorscheme'
Plugin 'Yggdroot/indentLine'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'wsdjeg/FlyGrep.vim'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'rkulla/pydiction'
Plugin 'Valloric/MatchTagAlways'
Plugin 'docunext/closetag.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-endwise'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'
"vim 提示栏增强工具
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/a.vim'
"Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vim-scripts/txt.vim'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'will133/vim-dirdiff'
Plugin 'mhinz/vim-startify'
"tab键代码补全 如输入main按tab键补全main函数
"要将vim-snippets中的snippets放到bundle外才可以使用
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
"c/c++ 补全
Plugin 'vim-scripts/OmniCppComplete'
"自动补全
Plugin 'vim-scripts/AutoComplPop'
"显示函数声明 需要生成tags
Plugin 'mbbill/echofunc'
call vundle#end()            
filetype plugin indent on    

" load vim default plugin
runtime macros/matchit.vim

"""""""""""""""""""""""""""""""""""
"配置设置
"""""""""""""""""""""""""""""""""""

" a.vim: .h -> .cpp or .cpp -> .h 切换.h和.cpp
nnoremap <silent> <F2> :A<CR>

" tagbar
" 用系统默认路径
"let g:tagbar_ctags_bin = '/usr/bin/ctags' "linux
 let g:tagbar_ctags_bin = '/usr/local/bin/ctags' "mac
let g:tagbar_width = 30
"开启自动预览 
"let g:tagbar_autopreview = 1
let g:tagbar_left = 1
let g:tagbar_sort = 0
map <F3> :TagbarToggle<CR>
imap <F3> <ESC> :TagbarToggle<CR>

" nerdtree
let g:NERDTreeWinPos="right"
map <F4> :NERDTreeToggle<CR>
imap <F4> <ESC> :NERDTreeToggle<CR>
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ctags
nmap <F5> :call RunShell("Generate tags","ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .") <CR>
function RunShell(Msg,Shell)
    echo a:Msg . '...'
    call system(a:Shell)
    echon 'done'
endfunction
set tags=tags
set tags+=./tags 
set tags+=/usr/include/tags
set tags+=~/.vim/systags
set tags+=~/.vim/x86_64-linux-gnu-systags
let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_semantic_triggers = {} 
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&',']']

" markdown
let g:mkdp_path_to_chrome = "firefox"
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview

"去空行
map <F6> :g/^\s*$/d<CR>

" change-colorscheme
map <F10> :NextColorScheme<CR>
imap <F10> <ESC> :NextColorScheme<CR>
map <F9> :PreviousColorScheme<CR>
imap <F9> <ESC> :PreviousColorScheme<CR>


"空格键切换命令模式
nnoremap <space> :
"选中状态下ctrl+c复制
vmap <C-c> +y
"ctrl+a全选
map <C-a> ggVG
"map! <C-a> <ESC>ggVG

" colorscheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"monokai
"dream
"dracula
"blues
"onedark
"tender
"solarized
"colorscheme monokai

" cpp_class_scope_highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

" airline
let g:airline_theme="luna"
" let g:airline_theme="badwolf"
let g:airline_powerline_fonts = 1
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" ctrlp  ctrl+x 水平 分屏打开文件  ctrl+v 垂直分屏打开文件 
let g:ctrlp_map = '<c-d>'
let g:ctrlp_cmd = ':CtrlP'
let g:ctrlp_working_path_mode = '0'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" vim-devicons
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

" incsearch.vim 搜索
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


" vim-easymotion
let g:EasyMotion_smartcase = 1
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>. <Plug>(easymotion-repeat)
" <Leader>f{char} to move to {char}
map <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" indentLine <leader>相当于 ，
let g:indentLine_enabled=0
"let g:indentLine_char = '!'
let g:indentLine_color_term = 239
nmap <Leader><Leader>il :IndentLinesToggle<CR>

" pydiction
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height=10

"OmniCppComplete 补全
"tags文件生成命令（通常位于代码项目的最上层目录下执行）[admin@local]$ ctags -R --c++-kinds=+p --fields=+iaS --extra=+q引导omnicppcomplete找到tags文件：
"（1）在vim中设置：set tags+=/home/project/project_1/tags 。该方法不方便，每次使用都要set一下
"（2）在~/.vimrc中添加常用的路径tags：set tags+=/home/project/project_1/tags
                                     "set tags+=/home/project/project_2/tags
 set completeopt=menu,menuone  
 "  打开  . 操作符
 let OmniCpp_MayCompleteDot=1    
"打开 -> 操作符
 let OmniCpp_MayCompleteArrow=1  
"打开 :: 操作符
 let OmniCpp_MayCompleteScope=1  
"打开命名空间
 let OmniCpp_NamespaceSearch=1   
 let OmniCpp_GlobalScopeSearch=1  
 let OmniCpp_ShowAccess=1
 let OmniCpp_DefaultNamespace=["std"]  
"打开显示函数原型
 let OmniCpp_ShowPrototypeInAbbr=1  
"自动弹出时自动跳至第一个
 let OmniCpp_SelectFirstItem = 2
 "类成员显示控制 1显示所有 0自动
 let OmniCpp_DisplayMode=1

" Echofunc (echofunc.vim) 函数参数显示
"let g:EchoFuncKeyNext='<C-q>'
"当有多个时用ctrl+e翻页
let g:EchoFuncKeyPrev='<C-e>'
let g:EchoFuncAutoStartBalloonDeclaration = 1
