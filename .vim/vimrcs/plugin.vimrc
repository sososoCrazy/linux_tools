

" set the runtime path to include Vundle and initialize 
if $OS =~ "Windows.*"
	call vundle#begin('~/vimfiles/bundle')
"elseif has('unix')
elseif $OS =~ "Unix"
	call vundle#begin()
else
	call vundle#begin()
endif
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-airline/vim-airline'

"vim-airline配置:优化vim界面"
let g:airline#extensions#tabline#enabled = 1

" airline设置
" 显示颜色
set t_Co=256
set laststatus=2

" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1

" 开启tabline
let g:airline#extensions#tabline#enabled = 1

" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '

" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = ' '

" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1

Plugin 'vim-airline/vim-airline-themes'
"let g:airline_theme='lucius'
let g:airline_theme='peaksea'


Plugin 'The-NERD-tree'

" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1

" 是否显示隐藏文件
let NERDTreeShowHidden=1

" 设置宽度
let NERDTreeWinSize=40

" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']

" 显示书签列表
let NERDTreeShowBookmarks=1

"autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")) | q | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd BufEnter * lcd %:p:h

"Plugin 'indentLine.vim'
"let g:indentLine_char='┆'
"let g:indentLine_enabled = 1
"
"
"Plugin 'delimitMate.vim'
"
"
"Plugin 'taglist.vim'
"
"Plugin 'winmanager'

"""""""""""""""""""""""""""""""
 
"" winManager setting
 
"""""""""""""""""""""""""""""""
 
"设置界面分割
 
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
 
let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer"
 
  
 
"设置winmanager的宽度，默认为25
 
let g:winManagerWidth = 30
 
 
"定义打开关闭winmanager按键
 
"nmap <silent> <F3> :WMToggle<cr>


"Plugin 'Molokai'
"
"Plugin 'Nerdcommenter'
"
"Plugin 'vim-colors-solarized'
"
"Plugin 'vim-colorschemes'
"
"Plugin 'vlog_inst_gen.vim'
"		
"Plugin 'verilog_emacsauto.vim'
"
"Plugin 'VisIncr'
"
"
"Plugin 'tabular'
"Plugin 'xml.vim'
"Plugin 'syntastic'
"Plugin 'ctrlp.vim'
"Plugin 'vim-addon-mw-utils'
"Plugin 'tlib'
"Plugin 'vim-snipmate'
"Plugin 'vim-snippets'
"Plugin 'DrawIt'
"Plugin 'riv.vim'
"Plugin 'rhythm.css'
"Plugin 'InstantRst'
"Plugin 'tagbar'
"Plugin 'pydiction'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on



